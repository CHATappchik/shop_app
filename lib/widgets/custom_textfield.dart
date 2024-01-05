import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/const/styles.dart';

Widget customTextField({String? lable, String? hint, controller, isPass}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(lable!, style: const TextStyle(color: redColor, fontFamily: semibold, fontSize: 16)),
      TextFormField(
        obscureText: isPass,
        controller: controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: fontGrey,
          ),
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: redColor,
            ),
          ),
        ),
      ),
      const SizedBox(height: 5),
    ],
  );
}