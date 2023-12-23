import 'package:flutter/material.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/const/strings.dart';
import 'package:shop_app/const/styles.dart';
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
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: whiteColor,
                    ),
                    padding: const EdgeInsets.all(8),
                    width: 60,
                    height: 60,
                    child:
                        Image.asset('assets/images/app_logo.png', width: 200),
                  ),
                  const SizedBox(height: 7),
                  const Text('Log in to ${appname}',
                      style: TextStyle(
                          color: whiteColor, fontFamily: bold, fontSize: 18)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320.0),
            child: Container(
              color: textFieldGrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, top: 200, right: 15, bottom: 150),
            child: Container(
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: customTextField(lable: email, hint: emailHint),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: customTextField(lable: password, hint: passwordHint),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: const Text(forgetPass))),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: myButton(color: redColor, title: login, textColor: whiteColor, onPress: () {}),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(createNewAccount, style: TextStyle(color: fontGrey)),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: myButton(color: lightGrey, title: signup, textColor: redColor, onPress: () {}),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
