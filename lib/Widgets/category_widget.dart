import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            color: Colors.blueGrey,
            height: size.width * 0.45,
            width: size.width * 0.45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: FancyShimmerImage(
                errorWidget: const Icon(
                  IconlyBold.danger,
                  color: Colors.red,
                  size: 28,
                ),
                imageUrl: "https://i.ibb.co/vwB46Yq/shoes.png",
                boxFit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Categ name",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.blue.withOpacity(0.5),
              ),
            ),
          )
        ],
      ),
    );

  }
}
