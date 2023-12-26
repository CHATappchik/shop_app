import 'package:flutter/material.dart';
import 'package:shop_app/const/lists.dart';
import 'package:shop_app/const/strings.dart';
import 'package:shop_app/const/styles.dart';
import 'package:shop_app/often_used/often_used_func.dart';
import 'package:shop_app/screens/category_screen/categories_details.dart';
import '../../const/colors.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

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
              categories,
            style: TextStyle(
              color: whiteColor,
              fontFamily: bold,
            ),
          ),
          ),
          body: Container(
            padding: EdgeInsets.all(12),
            child: GridView.builder(
              shrinkWrap: true,
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 200),
                itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => nextScreen(context, CategoriesDetails(title: categoryList[index])),
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                            categoryImages[index],
                          height: 120,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        Text(
                            categoryList[index],
                          style: TextStyle(
                            color: darkFontGrey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
                }
            ),
          ),
        ),
      ],
    );
  }
}
