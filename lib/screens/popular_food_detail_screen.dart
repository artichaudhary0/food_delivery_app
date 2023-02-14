import 'package:flutter/material.dart';
import 'package:food_delivery_app/utilis/color.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/dimension.dart';

import '../widgets/app_column_of_icon_text_widget.dart';
import '../widgets/app_icon.dart';
import '../widgets/expandable_text_widget.dart';

class PopularFoodDetailsScreen extends StatelessWidget {
  const PopularFoodDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          left: Dimension.width20,
          right: Dimension.width20,
          top: Dimension.height30,
          bottom: Dimension.height30,
        ),
        height: Dimension.pageViewTextContainer,
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimension.radius20),
            topRight: Radius.circular(Dimension.radius20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: Dimension.width20,
                right: Dimension.width20,
                top: Dimension.height15,
                bottom: Dimension.height15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Dimension.radius20,
                ),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(width: Dimension.width5),
                  BigText(text: "0"),
                  SizedBox(width: Dimension.width5),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: Dimension.width20,
                right: Dimension.width20,
                top: Dimension.height15,
                bottom: Dimension.height15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Dimension.radius20,
                ),
                color: AppColors.mainColor,
              ),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [

          // background image
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: Dimension.height350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/food0.png",
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            ),
          ),
          Positioned(
            top: Dimension.height350 - 20,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumnfIconTextWidget(),
                  SizedBox(height: Dimension.height15),
                  BigText(text: "Introduction"),
                  SizedBox(height: Dimension.height10),
                  Expanded(child: SingleChildScrollView(
                    child: ExpandableTextWidget(text:"ekywvqwfvarfeeeeeeeeeeeeeeeeeeee"
                        "eeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrr"
                        "rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr""eeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrr"
                        "rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr"
                        "rrrrrrrrrrrrrrrrrrrrrretvvvvvvvvvvvvvvvvvvvv""eeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrr"
                        "rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr"
                        "rrrrrrrrrrrrrrrrrrrrrretvvvvvvvvvvvvvvvvvvvv""eeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrr"
                        "rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr"
                        "rrrrrrrrrrrrrrrrrrrrrretvvvvvvvvvvvvvvvvvvvv"
                        "rrrrrrrrrrrrrrrrrrrrrretvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv"),
                  ),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
