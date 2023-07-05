import 'package:flutter/material.dart';
import 'package:gestock/utils/colors.dart';
import 'package:gestock/widgets/mobile/shared/text_large.dart';
import 'package:gestock/widgets/mobile/shared/text_moy.dart';
import 'package:gestock/widgets/mobile/shared/text_small.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';

import '../../../widgets/mobile/tabbartab.dart';

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
            onPressed: () {
              context.pop();
            },
            icon: const HeroIcon(
              HeroIcons.chevronLeft,
              size: 30,
            )),
        title: const TextMoy(text: 'Ventes'),
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
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: bgcolorgrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TabBar(
                controller: controller,
                isScrollable: false,
                indicatorPadding: const EdgeInsets.all(0),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                labelPadding: const EdgeInsets.all(0),
                indicatorSize: TabBarIndicatorSize.tab,
                automaticIndicatorColorAdjustment: false,
                indicatorColor: bgcolorgrey,
                dividerColor: bgcolorgrey,
                labelColor: colorlack,
                unselectedLabelColor: colorlack,
                indicator: BoxDecoration(
                    color: bgcolorwhite,
                    borderRadius: BorderRadius.circular(10)),
                tabs: const [
                  TabBarTab(title: 'Day'),
                  TabBarTab(title: 'Month'),
                  TabBarTab(title: 'Year')
                ],
              ),
            ),
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
            height: 80,
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
                TextLarge(
                    text: '200.000 \$/ Jour', color: bgcolorwhite, size: 20),
              ],
            ),
          ),
          Container(
            height: 200,
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
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/img/bg.jpeg'),
                      radius: 30,
                    ),
                    TextMoy(text: 'Fanta Sucre', size: 17),
                    TextMoy(text: '100 Q', size: 17),
                    TextMoy(text: '100000000 Fc', size: 17),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
