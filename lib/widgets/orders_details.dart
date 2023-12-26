import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../const/strings.dart';
import '../const/styles.dart';

Widget OrderDetails() {
  return Container(
    margin: EdgeInsets.all(4),
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: whiteColor,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [lightShadow],
    ),
    child: Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            numOrder,
            style: TextStyle(
              fontFamily: semibold,
              color: darkFontGrey,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Align(alignment: Alignment.topLeft, child: Text(dateAndTime)),
            const Spacer(),
            Text(
              adress,
              style: TextStyle(
                  fontFamily: semibold, fontSize: 18, color: darkFontGrey),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              paid,
              style: TextStyle(
                color: darkFontGrey,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              '           \$15.00',
              style: TextStyle(fontFamily: semibold),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              writtenOff,
              style: TextStyle(
                color: darkFontGrey,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              '7 points',
              style: TextStyle(fontFamily: semibold),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              counted,
              style: TextStyle(
                color: darkFontGrey,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              '     3 points',
              style: TextStyle(fontFamily: semibold),
            ),
          ],
        ),
      ],
    ),
  );
}
