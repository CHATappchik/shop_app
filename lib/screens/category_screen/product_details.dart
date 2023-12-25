import 'package:flutter/material.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/const/styles.dart';

class ProductDetails extends StatelessWidget {
  final String? title;
  const ProductDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: Text(
            title!,
          style: TextStyle(
            fontFamily: bold,
            color: darkFontGrey,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border_outlined))
        ],
      ),
      body: Container(),
    );
  }
}
