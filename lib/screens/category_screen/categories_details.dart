import 'package:flutter/material.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/const/styles.dart';
import 'package:shop_app/often_used/often_used_func.dart';
import 'package:shop_app/screens/category_screen/product_details.dart';

class CategoriesDetails extends StatelessWidget {
  final String title;

  const CategoriesDetails({super.key, required this.title});

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
          appBar: AppBar(
            title: Text(
              title,
              style: TextStyle(
                fontFamily: bold,
                color: whiteColor,
              ),
            ),
          ),
          body: Container(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      6,
                      (index) => Container(
                        width: 120,
                        height: 60,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Baby Clothing',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: semibold,
                              color: darkFontGrey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                //items container

                Expanded(
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 300),
                      itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => nextScreen(context, ProductDetails(title: 'APPLE iPhone 13 128GB Starlight')),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          padding: const EdgeInsets.all(18),
                          decoration: const BoxDecoration(
                            boxShadow: [lightShadow],
                              color: whiteColor,
                              borderRadius: BorderRadius.all(Radius.circular(12))
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/iph13.jpg',
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                              const Spacer(),
                              const Text(
                                'APPLE iPhone 13 128GB Starlight',
                                style: TextStyle(
                                  fontFamily: semibold,
                                  color: darkFontGrey,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                '\$800',
                                style: TextStyle(
                                  color: redColor,
                                  fontFamily: bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                      }
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
