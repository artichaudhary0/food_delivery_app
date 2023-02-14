import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/food_page_pageview.dart';
import 'package:food_delivery_app/utilis/color.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/dimension.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Header of main Page
          Container(
            // header section
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimension.height45, bottom: Dimension.height15),
              padding: EdgeInsets.only(
                  left: Dimension.width20, right: Dimension.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Best India",
                        color: AppColors.mainColor,
                        size: Dimension.text30,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Uttar Pradesh",
                            color: AppColors.titleColor,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: Dimension.icon20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: Dimension.height45,
                    width: Dimension.width45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(Dimension.radius15),
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: Dimension.icon20,
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Pageview of main page
          Expanded(
            child: SingleChildScrollView(
              child: FoodPageViewScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
