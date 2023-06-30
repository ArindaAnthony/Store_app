import 'package:flutter/material.dart';

import '../Widgets/feeds_widget.dart';
class FeedsScreen extends StatelessWidget {
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All products", style: TextStyle(fontSize: 20,),),
        leading: InkWell(
            onTap: ()=>Navigator.pop(context),
            child: const Icon(Icons.arrow_back_outlined, color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    childAspectRatio: 0.6,
                    crossAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return const FeedsWidget();
                }),
          ],
        ),
      )
    );
  }
}
