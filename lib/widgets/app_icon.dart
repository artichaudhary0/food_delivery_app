import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  AppIcon(
      {Key? key,
      required this.icon,
      this.size = 45,
      this.iconColor = const Color(0xff756d54),
      this.backgroungColor = const Color(0xfffcf4e4)})
      : super(key: key);
  final IconData icon;
  final double size;
  final Color iconColor;
  final backgroungColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroungColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: size / 2,
      ),
    );
  }
}
