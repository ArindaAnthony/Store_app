import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/Screens/categories_screen.dart';
import 'package:store_app/Screens/users_screen.dart';
import 'package:store_app/Widgets/app_bar_icons.dart';
import 'package:store_app/Widgets/feeds_widget.dart';
import 'package:store_app/Screens/feeds_screen.dart';

import '../Widgets/sales_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _searchController;
  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 4,
          backgroundColor: Colors.white,
          leading: AppBarIcons(icon: IconlyBold.category, function: ()=>Navigator.push(context, PageTransition(child: const CategoriesScreen(), type: PageTransitionType.fade))),
          title: const Text(
            "Home",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          centerTitle: true,
          actions: [AppBarIcons(icon: IconlyBold.user3, function: ()=>Navigator.push(context, PageTransition(child: const UsersScreen(), type: PageTransitionType.fade)))],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: const TextStyle(color: Colors.black),
                    filled: true,
                    //fillColor: Colors.grey,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.red)),
                    suffixIcon: const Icon(
                      IconlyLight.search,
                      color: Colors.black12,
                    )),
              ),
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                height: size.height * 0.25,
                child: Swiper(
                  itemCount: 3,
                  pagination: const SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                          color: Colors.white, activeColor: Colors.red)),
                  itemBuilder: (context, index) {
                    return const SalesWidget();
                  },
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "All Products",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                      onTap: (){
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>const FeedsScreen()));
                        Navigator.push(context, PageTransition(child: const FeedsScreen(), type: PageTransitionType.fade));
                      },
                      child: const Icon(Icons.arrow_forward, color: Colors.blue,)),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 8,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 5,
                              childAspectRatio: 0.7,
                              crossAxisSpacing: 5),
                          itemBuilder: (context, index) {
                            return const FeedsWidget();
                          }),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
