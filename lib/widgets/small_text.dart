import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/dimension.dart';

class SmallText extends StatelessWidget {
  String text;
  Color color;
  double size;
  double height;
  TextOverflow textOverflow;

  SmallText({Key? key,
    required this.text,
    this.color=const Color(0xffccc7c5),
    this.size= 0,
    this.textOverflow=TextOverflow.ellipsis,
    this.height=1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
      overflow: textOverflow,
      maxLines: 20,
      style: TextStyle(
        height: height,
        fontSize:size==0?Dimension.text12: size,
        fontFamily: "Roboto",
        color: color,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
