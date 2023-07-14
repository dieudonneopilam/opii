import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:gestock/utils/colors.dart';
import 'package:gestock/widgets/mobile/shared/bouton.round.dart';
import 'package:gestock/widgets/mobile/shared/text_moy.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import '../../../widgets/mobile/shared/box/boxcontentabview.dart';
import '../../../widgets/mobile/shared/tabbarmodel.dart';

class VentePage extends StatefulWidget {
  const VentePage({super.key});
  @override
  State<VentePage> createState() => _VentePageState();
}

class _VentePageState extends State<VentePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController controller = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: bgcolorwhite,
      appBar: AppBar(
        toolbarHeight: 70,
        leading: IconButton(
            onPressed: () => context.pop(),
            icon: const HeroIcon(HeroIcons.chevronLeft, size: 30)),
        title: const TextMoy(text: 'Ventes'),
        actions: [
          BouttonIconRound(iconData: BootstrapIcons.search, onTap: () {}),
          const SizedBox(width: 10),
          BouttonIconRound(iconData: BootstrapIcons.plus, onTap: () {}),
          const SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TabBarModel(controller: controller),
            Container(
              decoration: const BoxDecoration(),
              height: MediaQuery.sizeOf(context).height - 177,
              child: TabBarView(
                controller: controller,
                children: const [
                  ContentTabViewVente(),
                  ContentTabViewVente(),
                  ContentTabViewVente(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
