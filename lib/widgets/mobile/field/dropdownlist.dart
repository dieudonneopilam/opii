import 'package:flutter/material.dart';
import 'package:gestock/constants/etat.dart';
import 'package:gestock/widgets/mobile/shared/text_moy.dart';

import '../../../utils/colors.dart';
import '../shared/text_small.dart';

// ignore: must_be_immutable
class DropDownFieldList extends StatelessWidget {
  DropDownFieldList(
      {super.key,
      required this.currencies,
      required this.selectedCurrency,
      required this.label,
      required this.etatField,
      required this.onChanged});
  final List currencies;
  late String selectedCurrency;
  final String label;
  final EtatField etatField;
  Color color = Colors.red;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: etatField == EtatField.valid ? colorBlue : color)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 15, top: 5),
              child: TextSmal(
                text: label,
                color: etatField == EtatField.valid ? colorBlue : color,
              )),
          DropdownButton<String>(
            iconDisabledColor: Colors.white,
            iconEnabledColor: colorBlue,
            padding: const EdgeInsets.only(
              left: 15,
            ),
            iconSize: 40,
            isExpanded: true,
            autofocus: false,
            dropdownColor: Colors.white,
            isDense: true,
            borderRadius: BorderRadius.circular(10),
            items: currencies.map((currency) {
              return DropdownMenuItem<String>(
                value: currency,
                child: TextMoy(
                    text: currency.toString(),
                    color: etatField == EtatField.valid ? colorBlue : color,
                    size: 16),
              );
            }).toList(),
            value: selectedCurrency,
            onChanged: (value) => onChanged(value),
          )
        ],
      ),
    );
  }
}
