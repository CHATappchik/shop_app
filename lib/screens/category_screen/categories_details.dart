import 'package:flutter/material.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/const/styles.dart';

class CategoriesDetails extends StatelessWidget {
  final String title;
  const CategoriesDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: redColor,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 320.0),
          child: Container(
            color: textFieldGrey,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
                title,
            style: TextStyle(
              fontFamily: bold,
              color: whiteColor,
            ),),
          ),
        ),
      ],
    );
  }
}
