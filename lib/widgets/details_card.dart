import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../const/styles.dart';

Widget DetailsCard({width, String? count, String? title}) {
  return Container(
    padding: EdgeInsets.all(4),
    height: 80,
    width: width,
    decoration: BoxDecoration(
      color: whiteColor,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count!,
          style: TextStyle(
              fontFamily: bold,
              fontSize: 16,
              color: darkFontGrey
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title!,
          style: TextStyle(
            color: darkFontGrey,
          ),
        ),
      ],
    ),
  );
}