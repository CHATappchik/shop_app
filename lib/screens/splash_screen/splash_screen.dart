import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/const/firebase_const.dart';
import 'package:shop_app/const/strings.dart';
import 'package:shop_app/screens/auth_screen/login_screen.dart';
import 'package:shop_app/screens/home_screen/home.dart';
import '../../const/styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late bool _isSignedIn = true;

  userStatus () async{
    await auth.authStateChanges().listen((User? user) {
      if(user == null && mounted) {
        setState(() {
          _isSignedIn = false;
        });
      }
    });
  }

  @override
  void initState() {
    userStatus ();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: MediaQuery.of(context).size.height,
      animationDuration: const Duration(seconds: 3),
      backgroundColor: redColor,
      splash:Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: whiteColor,
              ),
              padding: const EdgeInsets.all(8),
              width: 77,
              height: 77,
              child: Image.asset(
                  'assets/icons/app_logo.png',
                  width: 300),
            ),
            const SizedBox(height: 10),
            const Text(appname, style: TextStyle(fontFamily: bold, fontSize: 22, color: whiteColor),),
            const SizedBox(height: 12),
            const Text(appversion, style: TextStyle(color: whiteColor),),
            const Spacer(),
            const Text(credits, style: TextStyle(color: whiteColor, fontFamily: semibold),),
            const SizedBox(height: 30),
          ],
        ),
      ),


      nextScreen: _isSignedIn ? const Home()
      :const LoginPage(),);

  }
}
