import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../text_moy.dart';

class BoxContentVenteProduit extends StatelessWidget {
  const BoxContentVenteProduit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(left: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: bgcolorgrey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/img/bg.jpeg'),
                radius: 20,
              ),
              TextMoy(
                text: 'Fanta Sucre',
                size: 16,
                color: colorBlue,
              ),
              const TextMoy(text: '100 boteilles', size: 16),
              const TextMoy(text: '1.000.000 Fc', size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
