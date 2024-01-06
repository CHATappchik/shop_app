import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/const/firebase_const.dart';
import 'package:shop_app/often_used/often_used_func.dart';
import 'package:shop_app/screens/home_screen/home.dart';
import 'package:shop_app/controllers/auth_service_contoller/auth_service_controller.dart';
import 'package:shop_app/services/database_service/database_service.dart';
import '../../const/colors.dart';
import '../../const/strings.dart';
import '../../const/styles.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/my_button.dart';
import 'login_screen.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool? isCheck = false;

  //text controllers
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var retypePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authController = context.watch<AuthService>();

    return Scaffold(
      body: Stack(
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
                      child:
                          Image.asset('assets/icons/app_logo.png', width: 200),
                    ),
                  ),
                ),
                const SizedBox(height: 7),
                const Text('Join the ${appname}',
                    style: TextStyle(
                        color: whiteColor, fontFamily: bold, fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, top: 20, right: 15, bottom: 150),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: whiteColor,
                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Observer(builder: (_) => Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: customTextField(
                                  lable: name,
                                  hint: nameHint,
                                  controller: nameController,
                                  isPass: false),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: customTextField(
                                  lable: email,
                                  hint: emailHint,
                                  controller: emailController,
                                  isPass: false),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: customTextField(
                                  lable: password,
                                  hint: passwordHint,
                                  controller: passwordController,
                                  isPass: true),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: customTextField(
                                  lable: retypePassword,
                                  hint: passwordHint,
                                  controller: retypePasswordController,
                                  isPass: true),
                            ),
                            Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Text(forgetPass))),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Checkbox(
                                    activeColor: redColor,
                                    checkColor: whiteColor,
                                    value: isCheck,
                                    onChanged: (newValue) {
                                      setState(() {
                                        isCheck = newValue;
                                      });
                                    }),
                                Expanded(
                                  child: RichText(
                                      text: const TextSpan(children: [
                                    TextSpan(
                                      text: 'I agree to the ',
                                      style: TextStyle(
                                        fontFamily: regular,
                                        color: fontGrey,
                                      ),
                                    ),
                                    TextSpan(
                                      text: termAndCond,
                                      style: TextStyle(
                                        fontFamily: regular,
                                        color: redColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' & ',
                                      style: TextStyle(
                                        fontFamily: regular,
                                        color: fontGrey,
                                      ),
                                    ),
                                    TextSpan(
                                      text: privacyPolicy,
                                      style: TextStyle(
                                        fontFamily: regular,
                                        color: redColor,
                                      ),
                                    ),
                                  ])),
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: SizedBox(
                                width: double.infinity,
                                child: authController.isLoading
                                    ? const CircularProgressIndicator(
                                  valueColor:
                                  AlwaysStoppedAnimation(redColor),
                                )
                                    :myButton(
                                  color: isCheck == true ? redColor : lightGrey,
                                  title: signup,
                                  textColor: whiteColor,
                                  onPress: () async {
                                    if (isCheck != false) {
                                      authController.isLoading = true;
                                      try {
                                        // Перевірка, чи вже є такий користувач у базі

                                        await DataBaseService().gettingUserData(emailController.value.text).then((value) async => {
                                        if (value.docs.isNotEmpty) {
                                            showSnackBar(context, darkFontGrey,
                                            userExists),
                                        // Якщо користувач з таким емейлом існує, переходьте на екран авторизації
                                        nextScreen(context, const LoginPage()),
                                      } else {

                                          // якщо ж не існує, то реєструємо нового користувача

                                      await authController
                                          .createUser(
                                          context: context,
                                          email: emailController.text,
                                          password:
                                          passwordController.text)
                                          .then((value) {
                                        return authController.storeUserData(
                                            name: nameController.text,
                                            email: emailController.text,
                                            password:
                                            passwordController.text);
                                      }).then((value) {
                                        showSnackBar(
                                            context, redColor, loggedIn);
                                        nextScreen(context, Home());
                                      })
                                    }
                                        });

                                      } catch (e) {
                                        auth.signOut();
                                        showSnackBar(context, redColor, e);
                                        authController.isLoading = false;
                                      }
                                    }
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {
                                nextScreenReplace(context, const LoginPage());
                              },
                              child: RichText(
                                  text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: alreadyHavenAccount,
                                    style: TextStyle(
                                      fontFamily: bold,
                                      color: fontGrey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: login,
                                    style: TextStyle(
                                      fontFamily: bold,
                                      color: redColor,
                                    ),
                                  ),
                                ],
                              )),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
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
