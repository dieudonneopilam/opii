import 'package:flutter/material.dart';
import '../../../utils/colors.dart';

class BouttonIconRound extends StatelessWidget {
  const BouttonIconRound({
    super.key,
    required this.iconData,
    this.padding = 10,
    this.radius = 10,
    required this.onTap,
  });
  final IconData iconData;
  final double radius;
  final double padding;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius), color: bgcolorgrey),
        child: Icon(iconData),
      ),
    );
  }
}
