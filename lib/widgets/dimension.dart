import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Dimension {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageViewContainer = screenHeight / 2.4;
  static double pageViewImageContainer = screenHeight / 3.80; // x=200
  static double pageViewTextContainer = screenHeight / 6.60; // x=115

  // for list view
  static double listViewImageSizeHeight = screenWidth / 3.27; // x= 110
  static double listViewTextContainerHeight = screenHeight / 7.0; // x=90

  // for heights
  static double height10 = screenHeight / 76; // x=10
  static double height15 = screenHeight / 50.66; // x=15
  static double height20 = screenHeight / 38; // x=20
  static double height30 = screenHeight / 25.33; // x=30
  static double height45 = screenHeight / 16.88; // x=45
  static double height50 = screenHeight / 15.2; // x=50
  static double height350 = screenHeight / 2.17; // x=350

  // for radius
  static double radius10 = screenHeight / 76; // x=10
  static double radius15 = screenHeight / 50.66; // x=15
  static double radius20 = screenHeight / 38; // x=20
  static double radius30 = screenHeight / 25.33; // x=30

  // for width
  static double width5 = screenWidth / 152; // x=5
  static double width10 = screenWidth / 76; // x=10
  static double width20 = screenWidth / 38; // x=20
  static double width30 = screenWidth / 25.33; // x=30
  static double width45 = screenWidth / 16.88; // x=45

  // for iconSize
  static double icon20 = screenHeight / 42.2; // x=24
  static double icon26 = screenHeight / 32.46; // x=26

  // for text
  static double text12 = screenHeight / 63.33; // x=12
  static double text20 = screenHeight / 38.0; // x=20
  static double text30 = screenHeight / 25.33; // x=30
}
