import 'package:flutter/material.dart';
import 'package:shop_app/const/colors.dart';

class CircularTile extends StatelessWidget {
  final String imagePath;
  final Function()? onTap;

  const CircularTile({
    super.key,
    required this.imagePath,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: CircleAvatar(
          backgroundColor: lightGrey,
          radius: 25,
          child: Image.asset(
            imagePath,
            height: 40,
          ),
        ),
      ),
    );
  }
}