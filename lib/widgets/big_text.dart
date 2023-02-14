import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/dimension.dart';

class BigText extends StatelessWidget {
  String text;
  Color color;
  double size;
  TextOverflow textOverflow;

  BigText(
      {Key? key,
      required this.text,
      this.color = const Color(0xff332d2b),
      this.size = 0.0,
      this.textOverflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      style: TextStyle(
        fontSize: size == 0 ? Dimension.text20 : size,
        fontWeight: FontWeight.w400,
        fontFamily: "Roboto",
        color: color,
      ),
    );
  }
}
