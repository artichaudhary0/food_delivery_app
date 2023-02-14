import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/widgets/small_text.dart';
import 'package:food_delivery_app/widgets/dimension.dart';

class IconAndText extends StatelessWidget {
  String text;
  IconData icon;
  Color iconColor;

  IconAndText({Key? key,required this.text,required this.icon,required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,size: Dimension.icon20,
          color: iconColor,
        ),
        SizedBox(width: Dimension.width5,),
        SmallText(
          text: text,
        )
      ],);
  }
}
