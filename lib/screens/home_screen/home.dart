import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/const/strings.dart';
import 'package:shop_app/const/styles.dart';
import 'package:shop_app/controllers/home_controller/home_controller_state.dart';
import 'package:shop_app/screens/account_screen/account_screen.dart';
import 'package:shop_app/screens/cart_screen/cart_screen.dart';
import 'package:shop_app/screens/category_screen/category_screen.dart';
import 'package:shop_app/screens/home_screen/home_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeController homeController = HomeController();

  @override
  Widget build(BuildContext context) {

    var navbarItem = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home, size: 26),
        label: home,
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.category, size: 26),
        label: categories,
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart, size: 26),
        label: cart,
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person, size: 26),
        label: account,
      ),
    ];

    var navBody = [
      const HomePage(),
      const CategoryPage(),
      const CartPage(),
      const AccountPage(),

    ];

    return Scaffold(
      body: Column(
        children: [
          Observer(builder: (_) => Expanded(child: navBody.elementAt(homeController.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Observer( builder: (_) =>
      BottomNavigationBar(
        currentIndex: homeController.currentNavIndex.value,
        selectedItemColor: redColor,
        selectedLabelStyle: const TextStyle(fontFamily: semibold),
        type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navbarItem,
        onTap: (index) => homeController.updateIndex(index),
      ),
      ),
    );
  }
}
