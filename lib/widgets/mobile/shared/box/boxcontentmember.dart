import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../text_moy.dart';
import '../text_small.dart';

class BoxContentMember extends StatelessWidget {
  const BoxContentMember({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 110,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage('assets/img/bg.jpeg'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextMoy(text: 'Dieudonne ngwangwa'),
              const TextSmal(text: 'admin'),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: colorBlue,
                        borderRadius: BorderRadius.circular(5)),
                    child: TextSmal(
                      text: 'modifier',
                      color: bgcolorwhite,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: bgcolorgrey,
                        borderRadius: BorderRadius.circular(5)),
                    child: TextSmal(
                      text: 'voir plus',
                      color: colorBlue,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
