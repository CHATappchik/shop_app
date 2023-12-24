import 'package:flutter/material.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/const/styles.dart';

Widget homeButtons({width, height, icon, title, onPress}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: whiteColor,
      borderRadius: BorderRadius.circular(12.0),
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.black.opacity.
      //   ),
      // ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
            icon,
          width: 26,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontFamily: semibold,
            color: darkFontGrey,
          ),
        ),
      ],
    ),
  );
}