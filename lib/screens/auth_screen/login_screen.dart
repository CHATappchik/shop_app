import 'package:flutter/material.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/const/strings.dart';
import 'package:shop_app/const/styles.dart';
import 'package:shop_app/often_used/often_used_func.dart';
import 'package:shop_app/screens/auth_screen/register_screen.dart';
import 'package:shop_app/screens/home_screen/home.dart';
import 'package:shop_app/widgets/component/circular_tile.dart';
import 'package:shop_app/widgets/custom_textfield.dart';
import 'package:shop_app/widgets/my_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: redColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320.0),
            child: Container(
              color: textFieldGrey,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: whiteColor,
                          ),
                          padding: const EdgeInsets.all(8),
                          width: 60,
                          height: 60,
                          child: Image.asset('assets/icons/app_logo.png',
                              width: 200),
                        ),
                  ),
                ),
                        const SizedBox(height: 7),
                        const Text('Log in to ${appname}',
                            style: TextStyle(
                                color: whiteColor,
                                fontFamily: bold,
                                fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, top: 20, right: 15, bottom: 150),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),),
                      ],
                      color: whiteColor,
                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only (top: 16),
                            child: customTextField(lable: email, hint: emailHint),
                          ),
                          Padding(
                            padding: const EdgeInsets.only (top: 16),
                            child: customTextField(
                                lable: password, hint: passwordHint),
                          ),
                          Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                  onPressed: () {}, child: const Text(forgetPass))),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: double.infinity,
                            child: myButton(
                                color: redColor,
                                title: login,
                                textColor: whiteColor,
                                onPress: () {
                                  nextScreen(context, const Home());
                                }),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.grey[400],
                                ),
                              ),
                              const Text(createNewAccount,
                                  style: TextStyle(color: fontGrey)),
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          SizedBox(
                            width: double.infinity,
                            child: myButton(
                                color: lightGolden,
                                title: signup,
                                textColor: redColor,
                                onPress: () {
                                  nextScreen(context, const SignUpPage());
                                }),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.grey[400],
                                ),
                              ),
                              const Text(loginWith,
                                  style: TextStyle(color: fontGrey)),
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularTile(imagePath: 'assets/icons/google_new.png', onTap: () {}),
                              CircularTile(imagePath: 'assets/icons/facebook_logo.png', onTap: () {}),
                              CircularTile(imagePath: 'assets/icons/apple_logo.png', onTap: () {}),
                            ],
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
