import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/const/styles.dart';

Widget myButton({onPress, color, textColor, title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
      onPressed: onPress,
      child: Text(title,
          style: TextStyle(
            color: textColor,
            fontFamily: bold,
          )));
}
