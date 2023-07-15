import 'package:flutter/material.dart';
import '../../../constants/etat.dart';
import '../../../utils/colors.dart';

class TextField1 extends StatelessWidget {
  const TextField1(
      {super.key,
      required this.label,
      required this.controller,
      this.type = TextInputType.text,
      required this.onChanged,
      required this.etatField,
      this.marginHorizontal = 10,
      this.marginVertical = 8,
      this.paddingHorizontal = 15,
      this.paddingvertical = 10});
  final String label;
  final Function onChanged;
  final TextEditingController controller;
  final TextInputType type;
  final Color color = Colors.red;
  final EtatField etatField;
  final double marginHorizontal;
  final double marginVertical;
  final double paddingHorizontal;
  final double paddingvertical;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: marginHorizontal, vertical: marginVertical),
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingvertical),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: (etatField == EtatField.valid
                  ? colorBlue
                  : (etatField == EtatField.none)
                      ? colorlack
                      : color),
              width: 1)),
      child: TextField(
        onChanged: (value) => onChanged(),
        keyboardType: type,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          labelText: label,
          labelStyle: TextStyle(
              color: (etatField == EtatField.valid
                  ? colorBlue
                  : (etatField == EtatField.none)
                      ? colorlack
                      : color)),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
