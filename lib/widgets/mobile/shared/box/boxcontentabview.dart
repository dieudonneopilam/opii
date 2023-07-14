import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../text_moy.dart';
import '../text_small.dart';
import 'boxcontentventeproduit.dart';

class ContentTabViewVente extends StatelessWidget {
  const ContentTabViewVente({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      height: MediaQuery.sizeOf(context).height - 177,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    transform: const GradientRotation(5),
                    colors: [colorlack, colorBlue])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextSmal(
                    text: 'le chiffre d\'affaire journalier',
                    color: bgcolorwhite),
                const TextMoy(
                    text: 'CA CDF : 2.000.000 FC',
                    color: Colors.amber,
                    size: 16),
                const TextMoy(
                    text: 'CA USD : 200.000 \$', color: Colors.amber, size: 16),
              ],
            ),
          ),
          const BoxContentVenteProduit(),
        ],
      ),
    );
  }
}
