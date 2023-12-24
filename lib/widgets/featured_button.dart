import 'package:flutter/material.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/const/styles.dart';

Widget featuredButton({String? icon, label}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4),
    width: 200,
    padding: const EdgeInsets.all(4),
    decoration: const BoxDecoration(
      color: whiteColor,
      borderRadius: BorderRadius.all(Radius.circular(12)),
      //boxShadow: BoxShadow(),
    ),
    child: Row(
      children: [
        Image.asset(
            icon!,
          width: 60,
          fit: BoxFit.fill,
        ),
        const SizedBox(width: 10),
        Text(
            label,
          style: const TextStyle(
            fontFamily: semibold,
            color: darkFontGrey,
          ),
        )
      ],
    ),
  );
}