import 'package:flutter/material.dart';
import 'package:shop_app/const/lists.dart';
import 'package:shop_app/const/strings.dart';
import 'package:shop_app/often_used/often_used_func.dart';
import '../../const/colors.dart';
import '../../const/styles.dart';
import '../../widgets/details_card.dart';
import 'my_orders/my_orders.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: redColor,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 420.0),
          child: Container(
            color: textFieldGrey,
          ),
        ),
        Scaffold(
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  // edit profile button
                  GestureDetector(
                    onTap: () {},
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.edit, color: whiteColor),
                    ),
                  ),

                  // user details section
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 52,
                        backgroundColor: darkFontGrey,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/avatar.jpg'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name Surname',
                              style: TextStyle(
                                  fontFamily: semibold, color: whiteColor),
                            ),
                            Text(
                              'example@gmail.com',
                              style: TextStyle(color: whiteColor),
                            ),
                          ],
                        ),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: whiteColor,
                          )
                        ),
                          onPressed: () {},
                          child: Text(
                              logOut,
                            style: TextStyle(
                              fontFamily: semibold,
                              color: whiteColor,
                            ),
                          ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DetailsCard(width: MediaQuery.of(context).size.width / 3.4, count: '123', title: 'your points'),
                      DetailsCard(width: MediaQuery.of(context).size.width / 3.4, count: '36', title: 'in your wishlist'),
                      DetailsCard(width: MediaQuery.of(context).size.width / 3.4, count: '893', title: 'your orders'),
                    ],
                  ),
                  //butons section

                  const SizedBox(height: 35),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      boxShadow: [lightShadow],
                      borderRadius: BorderRadius.circular(12),
                      color: whiteColor,
                    ),
                    child: ListView.separated(
                      shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {nextScreen(context, MyOrders(title: accountButtonList[index],));},
                            child: ListTile(
                              leading: Image.asset(accountButtonsIcons[index], width: 22),
                              title: Text(
                                  accountButtonList[index],
                                style: TextStyle(
                                  fontFamily: semibold,
                                  color: darkFontGrey
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            color: lightGrey,
                          );
                        },
                        itemCount: accountButtonList.length,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
