import 'package:card_swiper/card_swiper.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../consts.dart';
import 'categories_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: ()=>Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.blue,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: ()=>Navigator.push(context, PageTransition(child: const CategoriesScreen(), type: PageTransitionType.fade)),
              child: const Text(
                "Category",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                    flex: 3,
                    child: Text(
                      "Lorem Ipsum",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: const [
                        Text(
                          "\$",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "168",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height * 0.4,
              child: Swiper(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return FancyShimmerImage(
                      width: double.infinity,
                      boxFit: BoxFit.fill,
                      imageUrl: "https://i.ibb.co/vwB46Yq/shoes.png");
                },
                autoplay: true,
                pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.white, activeColor: Colors.red)),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text("Description", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700 ),
                    ),
                    const SizedBox(height: 10,),
                    Text(description, style: const TextStyle(fontSize: 20),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
