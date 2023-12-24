import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop_app/const/colors.dart';
import 'package:shop_app/const/strings.dart';
import 'package:shop_app/const/styles.dart';
import 'package:shop_app/controllers/swipper_controller/swiper_controller.dart';
import 'package:shop_app/widgets/home_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final MySwiperController mySwiperController = MySwiperController();

    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchAnything,
                  hintStyle: TextStyle(
                    color: textFieldGrey,
                  ),
                ),
              ),
            ),
        
            // swipers brands
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      height: 150,
                      child: Observer(
                        builder: (_) => Swiper(
                          autoplay: true,
                          controller: mySwiperController.swiperController,
                          itemCount: mySwiperController.imagePathsList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Image.asset(mySwiperController.imagePathsList[index],
                                fit: BoxFit.fitWidth);
                          },
                          pagination: const SwiperPagination(),
                          control: const SwiperControl(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // deals button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        homeButtons(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width / 2.5,
                          icon: 'assets/icons/todays_deal.png',
                          title: todayDeal,
                        ),
                        homeButtons(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width / 2.5,
                          icon: 'assets/icons/flash_deal.png',
                          title: flashSale,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                
                    // 2-nd swiper
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      height: 150,
                      child: Observer(
                        builder: (_) => Swiper(
                          autoplay: true,
                          // controller: mySwiperController.swiperController,
                          itemCount: mySwiperController.secondSwiperList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Image.asset(mySwiperController.secondSwiperList[index],
                                fit: BoxFit.fitWidth);
                          },
                          pagination: const SwiperPagination(),
                          control: const SwiperControl(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        homeButtons(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width / 3.7,
                          icon: 'assets/icons/top_categories.png',
                          title: topCategories,
                        ),
                        homeButtons(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width / 3.7,
                          icon: 'assets/icons/brands.png',
                          title: brands,
                        ),
                        homeButtons(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width / 3.7,
                          icon: 'assets/icons/top_sellers.png',
                          title: topSellers,
                        ),
                      ],
                    ),
                
                    //features categories
                
                    const SizedBox(height: 10),
                
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        featuredCategories,
                        style: TextStyle(
                          color: darkFontGrey,
                          fontSize: 18,
                          fontFamily: semibold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
