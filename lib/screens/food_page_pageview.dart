import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/utilis/color.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/dimension.dart';
import 'package:food_delivery_app/widgets/icon_text_widget.dart';
import 'package:food_delivery_app/widgets/small_text.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FoodPageViewScreen extends StatefulWidget {
  const FoodPageViewScreen({Key? key}) : super(key: key);

  @override
  State<FoodPageViewScreen> createState() => _FoodPageViewScreenState();
}

PageController pageController = PageController(viewportFraction: .85);
var currentPage = 0.0;
double scaleFactor = .8;
double height = Dimension.pageViewImageContainer;

class _FoodPageViewScreenState extends State<FoodPageViewScreen> {
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //page view
        SizedBox(
          height: Dimension.pageViewContainer,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),

        // dot indicator
        DotsIndicator(
          dotsCount: 5,
          position: currentPage,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            color: AppColors.textColor,
            activeColor: AppColors.mainColor,
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        SizedBox(
          height: Dimension.height20,
        ),

        // popular row
        Container(
          margin: EdgeInsets.only(left: Dimension.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(
                width: Dimension.width10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 6),
                child: SmallText(
                  text: ".",
                ),
              ),
              SizedBox(
                width: Dimension.width10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 2),
                child: SmallText(
                  text: "Food pairing",
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Dimension.height10
        ),

           ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                  left: Dimension.width20,
                  right: Dimension.width20,
                  bottom: Dimension.height10,
                ),
                child: Row(
                  children: [
                    Container(
                      height: Dimension.listViewImageSizeHeight,
                      width: Dimension.listViewImageSizeHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius20),
                        image: DecorationImage(
                          image: AssetImage("assets/images/food0.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: Dimension.listViewTextContainerHeight,
                        padding: EdgeInsets.only(
                          left: Dimension.width10,
                          top: Dimension.height10,
                          bottom: Dimension.height10
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimension.radius20),
                            bottomRight: Radius.circular(
                              Dimension.radius20,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BigText(text: "Nutritious fruit meal of china"),
                            SizedBox(height: Dimension.height10),
                            SmallText(text: "With chinese charaterstic"),
                            SizedBox(height: Dimension.height10),
                            Row(
                              children: [
                                IconAndText(
                                  text: 'Normal',
                                  icon: Icons.circle,
                                  iconColor: AppColors.yellowColor,
                                ),
                                SizedBox(
                                  width: Dimension.width10
                                ),
                                IconAndText(
                                  text: '1.7km',
                                  icon: Icons.location_on_rounded,
                                  iconColor: AppColors.mainColor,
                                ),
                                SizedBox(
                                  width: Dimension.width10
                                ),
                                IconAndText(
                                  text: '32min',
                                  icon: Icons.watch_later_outlined,
                                  iconColor: AppColors.iconColor1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),

      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix4 = Matrix4.identity();
    if (index == currentPage.floor()) {
      var currScale = (1 - (currentPage - index) * (1 - scaleFactor));
      var currTran = height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTran, 0);
    } else if (index == currentPage + 1) {
      var currScale =
          scaleFactor + (currentPage - index + 1) * (1 - scaleFactor);
      var currTran = height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTran, 0);
    } else if (index == currentPage.floor() - 1) {
      var currScale = 1 - (currentPage - index) * (1 - scaleFactor);
      var currTran = height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTran, 0);
    } else {
      var currTran = height * (1 - scaleFactor) / 2;
      matrix4 = Matrix4.diagonal3Values(1, scaleFactor, 1)
        ..setTranslationRaw(0, currTran, 0);
    }
    return Transform(
      transform: matrix4,
      child: Stack(
        children: [
          // image container
          Container(
            height: Dimension.pageViewImageContainer,
            margin: EdgeInsets.only(
              left: Dimension.width10,
              right: Dimension.width10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimension.radius20),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/food0.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // bottom container
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: Dimension.pageViewTextContainer,
              margin: EdgeInsets.only(
                left: Dimension.width30,
                right: Dimension.width30,
                bottom: Dimension.height45,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius30),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 5),
                    color: Color(0xffe8e8e8),
                    blurRadius: 5.0,
                  ),
                  BoxShadow(
                    offset: Offset(-5, 0),
                    color: Colors.white,
                  ),
                  BoxShadow(
                    offset: Offset(5, 0),
                    color: Colors.white,
                  )
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                  top: Dimension.height15,
                  left: Dimension.width10,
                  right: Dimension.width10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // type of food
                    BigText(text: "Indian Special"),

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
                    Row(
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
