import 'package:flutter/material.dart';

class TextLarge extends StatelessWidget {
  const TextLarge(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.size = 30});
  final String text;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: size, color: color, fontWeight: FontWeight.bold),
    );
  }
}
