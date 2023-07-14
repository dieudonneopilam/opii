import 'package:flutter/material.dart';
import '../../../constants/etat.dart';
import '../../../utils/colors.dart';

class TextField1 extends StatelessWidget {
  const TextField1({
    super.key,
    required this.label,
    required this.controller,
    this.type = TextInputType.text,
    required this.onChanged,
    required this.etatField,
  });
  final String label;
  final Function onChanged;
  final TextEditingController controller;
  final TextInputType type;
  final Color color = Colors.red;
  final EtatField etatField;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: (etatField == EtatField.valid ? colorBlue : color),
              width: 1)),
      child: TextField(
        onChanged: (value) => onChanged(),
        keyboardType: type,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          labelText: label,
          labelStyle: TextStyle(
              color: (etatField == EtatField.valid ? colorBlue : color)),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
