import 'dart:math';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/const/styles.dart';
import 'package:shop_app/widgets/my_button.dart';

class ProductDetails extends StatelessWidget {
  final String? title;

  const ProductDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Text(
          title!,
          style: TextStyle(
            fontFamily: bold,
            color: darkFontGrey,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.favorite_border_outlined))
        ],
      ),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      height: 350,
                      child: Swiper(
                          autoplay: true,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Image.asset(
                              'assets/images/fc5.jpeg',
                              width: double.infinity,
                              fit: BoxFit.cover,
                            );
                          }),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    title!,
                    style: TextStyle(
                      color: darkFontGrey,
                      fontFamily: semibold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  RatingBar(
                    minRating: 1,
                    maxRating: 5,
                    itemCount: 5,
                    initialRating: 3,
                    allowHalfRating: false,
                    ratingWidget: RatingWidget(
                      full: Icon(
                        Icons.star,
                        color: golden,
                      ),
                      half: Icon(
                        Icons.star,
                        color: Colors.pink,
                      ),
                      empty: Icon(
                        Icons.star,
                        color: textFieldGrey,
                      ),
                    ),
                    onRatingUpdate: (val) {},
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '\$35,00',
                    style: TextStyle(
                      color: redColor,
                      fontFamily: bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    color: textFieldGrey,
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Seller',
                                style: TextStyle(
                                    fontFamily: semibold, color: whiteColor),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'In House Brands',
                                style: TextStyle(
                                  fontFamily: semibold,
                                  color: darkFontGrey,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: whiteColor,
                          child:
                              Icon(Icons.message_rounded, color: darkFontGrey),
                        ),
                      ],
                    ),
                  ),

                  //color section

                  Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      boxShadow: [lightShadow],
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: Text(
                                  'Color: ',
                                  style: TextStyle(
                                    color: textFieldGrey,
                                  ),
                                ),
                              ),
                              Row(
                                children: List.generate(
                                    3,
                                    (index) => Container(
                                          width: 40,
                                          height: 40,
                                      margin: EdgeInsets.symmetric(horizontal: 4),
                                      decoration: BoxDecoration(
                                        color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                        )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          //height: 60,
          //width: double.infinity,
          child: myButton(
            onPress: () {},
            color: redColor,
            textColor: whiteColor,
            title: 'Add to cart',
          ),
        ),
      ]),
    );
  }
}
