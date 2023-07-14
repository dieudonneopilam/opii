import 'package:flutter/material.dart';
import 'package:gestock/utils/colors.dart';
import 'package:gestock/widgets/mobile/shared/text_small.dart';

showSnackBar(BuildContext context, String content, Color color) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    elevation: 0,
    content: Container(
        alignment: Alignment.centerLeft,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(0), color: color),
        child: TextSmal(text: content, color: bgcolorwhite)),
    backgroundColor: bgcolorwhite,
    padding: const EdgeInsets.all(0),
  ));
}
