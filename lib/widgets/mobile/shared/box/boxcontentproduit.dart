import 'package:flutter/material.dart';
import 'package:gestock/widgets/mobile/shared/text_small.dart';
import 'package:heroicons/heroicons.dart';
import '../../../../utils/colors.dart';

class BoxContentProduit extends StatelessWidget {
  const BoxContentProduit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgcolorwhite,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 75,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                    image: AssetImage('assets/img/bg.jpeg'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextSmal(text: 'Fanta', size: 20),
              const TextSmal(text: 'Stock : 400 bouteilles'),
              TextSmal(text: 'Prix de vente : 10 \$', color: colorBlue),
            ],
          ),
          Expanded(child: Container()),
          IconButton(
              onPressed: () {},
              icon: const HeroIcon(HeroIcons.ellipsisVertical))
        ],
      ),
    );
  }
}
