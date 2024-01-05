import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/const/strings.dart';
import 'package:shop_app/const/styles.dart';
import 'package:shop_app/controllers/auth_service_contoller/auth_service_controller.dart';
import 'package:shop_app/screens/splash_screen/splash_screen.dart';
import 'controllers/home_controller/home_controller_state.dart';
import 'controllers/swipper_controller/swiper_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: 'AIzaSyDl_VJIFHHwFCgsnOz7V2E3Q6WsY_XtgfI',
            appId: '1:899608299714:web:dbd3d0b71535eb31d0935b',
            messagingSenderId: '899608299714',
            projectId: 'shopapp-b1fcf'));
  } else if (Platform.isAndroid) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: 'AIzaSyAIAF17JTqfFor6ZdLnWyZmfocoujh5SAo',
            appId: '1:899608299714:android:a00c1204c5dc621dd0935b',
            messagingSenderId: '899608299714',
            projectId: 'shopapp-b1fcf'));
  } else {
    await Firebase.initializeApp();
  }
  runApp(MultiProvider(providers: [
    Provider<HomeController>(create: (_) => HomeController()),
    Provider<MySwiperController>(create: (_) => MySwiperController()),
    Provider<AuthService>(create: (_) => AuthService()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              color: darkFontGrey,
            ),
            backgroundColor: Colors.transparent),
        fontFamily: regular,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
