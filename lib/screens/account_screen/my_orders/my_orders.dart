import 'package:flutter/material.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/const/strings.dart';
import 'package:shop_app/const/styles.dart';
import 'package:badges/badges.dart' as badges;

import '../../../widgets/orders_details.dart';

class MyOrders extends StatelessWidget {
  final String title;

  const MyOrders({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        //backgroundColor: whiteColor,
        title: Text(
          title,
          style: TextStyle(
            fontFamily: bold,
            color: darkFontGrey,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: badges.Badge(
              badgeContent: Text('3'),
              child: Icon(
                Icons.notifications_none,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.1,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: redColor),
                    onPressed: () {},
                    child: Text(
                      shopping,
                      style: TextStyle(
                        color: whiteColor,
                        fontFamily: semibold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: lightGrey),
                    onPressed: () {},
                    child: Text(
                      orders,
                      style: TextStyle(
                        color: redColor,
                        fontFamily: semibold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return OrderDetails();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
