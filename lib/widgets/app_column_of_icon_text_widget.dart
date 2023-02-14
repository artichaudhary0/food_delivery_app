import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/dimension.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

import '../utilis/color.dart';
import 'big_text.dart';
import 'icon_text_widget.dart';

class AppColumnfIconTextWidget extends StatelessWidget {
  const AppColumnfIconTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // type of food
        BigText(text: "Indian Special",size: Dimension.icon26,),

        SizedBox(height: Dimension.height10),

        // rating , comment
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                    (index) => Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              width: Dimension.width10,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: Dimension.width10,
            ),
            SmallText(text: "1265"),
            SizedBox(
              width: Dimension.width10,
            ),
            SmallText(text: "comments")
          ],
        ),
        SizedBox(height: Dimension.height15),

        //image and text eg. circle and text:normal
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
              text: 'Normal',
              icon: Icons.circle,
              iconColor: AppColors.yellowColor,
            ),
            SizedBox(
              width: Dimension.width20,
            ),
            IconAndText(
              text: '1.7km',
              icon: Icons.location_on_rounded,
              iconColor: AppColors.mainColor,
            ),
            SizedBox(
              width: Dimension.width20,
            ),
            IconAndText(
              text: '32min',
              icon: Icons.watch_later_outlined,
              iconColor: AppColors.iconColor1,
            ),
          ],
        )
      ],
    );
  }
}
