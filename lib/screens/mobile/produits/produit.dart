import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:gestock/utils/colors.dart';
import 'package:gestock/widgets/mobile/shared/text_moy.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import '../../../widgets/mobile/shared/bouton.round.dart';
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
            onPressed: () => context.pop(),
            icon: const HeroIcon(HeroIcons.chevronLeft, size: 30)),
        title: const TextMoy(text: 'Produits'),
        actions: [
          BouttonIconRound(iconData: BootstrapIcons.search, onTap: () {}),
          const SizedBox(width: 10),
          BouttonIconRound(
              iconData: BootstrapIcons.plus,
              onTap: () {
                context.goNamed('add_produit');
              }),
          const SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height - 82,
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) => const BoxContentProduit(),
          ),
        ),
      ),
    );
  }
}
