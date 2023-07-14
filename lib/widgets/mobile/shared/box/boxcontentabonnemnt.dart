import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';
import '../text_moy.dart';
import '../text_small.dart';

class BoxContentAbonnemnt extends StatelessWidget {
  const BoxContentAbonnemnt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: bgcolorgrey)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextMoy(text: 'Main service', size: 20),
              TextMoy(text: '25\$ / Moth', size: 20, color: colorBlue),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextMoy(text: '3 / 200 jours', size: 18),
              TextMoy(text: '20/01/2024', color: colorred, size: 18),
            ],
          ),
          const SizedBox(height: 10),
          TextSmal(text: 'Voir plus', color: colorBlue, size: 18),
        ],
      ),
    );
  }
}
