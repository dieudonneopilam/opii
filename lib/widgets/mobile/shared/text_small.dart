import 'package:flutter/material.dart';

class TextSmal extends StatelessWidget {
  const TextSmal(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.size = 16,
      this.align = TextAlign.left});
  final String text;
  final Color color;
  final double size;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontSize: size, color: color, fontWeight: FontWeight.normal),
    );
  }
}
