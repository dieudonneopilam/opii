import 'package:flutter/material.dart';
import 'package:gestock/constants/etat.dart';

import '../../../utils/colors.dart';
import 'text_moy.dart';

class BoutonContainer extends StatelessWidget {
  BoutonContainer(
      {super.key,
      required this.title,
      this.height = 50,
      required this.onSubmit,
      required this.etatButton,
      this.marginHorizontal = 10,
      this.marginVertical = 5,
      this.heightButton = 60,
      this.paddingHorizontal = 0,
      this.paddingVertical = 0});
  final EtatField etatButton;
  final String title;
  final double height;
  final Color color = colorBlue;
  final VoidCallback onSubmit;
  final double marginHorizontal;
  final double marginVertical;
  final double paddingHorizontal;
  final double paddingVertical;
  final double heightButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSubmit,
      child: Container(
        height: heightButton,
        alignment: Alignment.center,
        width: double.infinity,
        margin: EdgeInsets.symmetric(
            horizontal: marginHorizontal, vertical: marginVertical),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: etatButton == EtatField.valid ? colorBlue : bgcolorgrey),
        child: TextMoy(text: title.toUpperCase(), color: bgcolorwhite),
      ),
    );
  }
}
