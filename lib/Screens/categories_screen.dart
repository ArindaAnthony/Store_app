import 'package:flutter/material.dart';
import 'package:store_app/Widgets/category_widget.dart';

import '../Widgets/feeds_widget.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Categories")),
      body: SingleChildScrollView(
        child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 0.0,
              childAspectRatio: 1.2,
            ),
            itemBuilder: (ctx, index) {
              return const CategoriesWidget();
            }),
      ),
    );
  }
}
