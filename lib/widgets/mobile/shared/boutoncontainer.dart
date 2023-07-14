import 'package:flutter/material.dart';
import 'package:gestock/constants/etat.dart';

import '../../../utils/colors.dart';
import 'text_moy.dart';

class BoutonContainer extends StatelessWidget {
  BoutonContainer({
    super.key,
    required this.title,
    this.height = 50,
    required this.onSubmit,
    required this.etatButton,
  });
  final EtatField etatButton;
  final String title;
  final double height;
  final Color color = colorBlue;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSubmit,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: etatButton == EtatField.valid ? colorBlue : bgcolorgrey),
        child: TextMoy(text: title.toUpperCase(), color: bgcolorwhite),
      ),
    );
  }
}
