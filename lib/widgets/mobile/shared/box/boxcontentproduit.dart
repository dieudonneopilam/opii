import 'package:flutter/material.dart';
import 'package:gestock/models/produit.dart';
import 'package:gestock/widgets/mobile/shared/text_small.dart';
import 'package:heroicons/heroicons.dart';
import '../../../../utils/colors.dart';

class BoxContentProduit extends StatelessWidget {
  const BoxContentProduit({
    super.key,
    required this.produit,
  });

  final ProduitModel produit;

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
                image: DecorationImage(
                    image: NetworkImage(produit.urlImage), fit: BoxFit.cover)),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextSmal(text: produit.designation, size: 20),
              TextSmal(text: 'Stock : ${produit.stock}'),
              TextSmal(
                  text:
                      'Prix de vente : ${produit.prix_vente} ${produit.devise_prix}',
                  color: colorBlue),
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
