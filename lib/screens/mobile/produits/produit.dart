import 'package:flutter/material.dart';
import 'package:gestock/utils/colors.dart';
import 'package:gestock/widgets/mobile/shared/text_moy.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import '../../../widgets/mobile/shared/box/boxcontentproduit.dart';

class ProduitsPage extends StatelessWidget {
  const ProduitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolorgrey,
      appBar: AppBar(
        toolbarHeight: 70,
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const HeroIcon(
              HeroIcons.chevronLeft,
              size: 30,
            )),
        title: const TextMoy(text: 'Produits'),
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: bgcolorgrey),
            child: const HeroIcon(HeroIcons.magnifyingGlass),
          ),
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: bgcolorgrey),
            child: const HeroIcon(HeroIcons.plus),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height - 82,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => const BoxContentProduit(),
          ),
        ),
      ),
    );
  }
}
