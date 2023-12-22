import 'package:flutter/material.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/const/strings.dart';

import '../../const/styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                ),
                padding: const EdgeInsets.all(8),
                width: 77,
                height: 77,
                child: Image.asset(
                    'assets/images/app_logo.png',
                width: 300),
              ),
              const SizedBox(height: 10),
              const Text(appname, style: TextStyle(fontFamily: bold, fontSize: 22, color: whiteColor),),
              const SizedBox(height: 5),
              const Text(appversion, style: TextStyle(color: whiteColor),),
              const Spacer(),
              const Text(credits, style: TextStyle(color: whiteColor, fontFamily: semibold),),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
