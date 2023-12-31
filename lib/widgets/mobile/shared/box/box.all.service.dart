import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'boxcontentservice.dart';

class BoxAllService extends StatelessWidget {
  const BoxAllService({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: BoxContentService(
                  icon: BootstrapIcons.tag,
                  title: 'produits',
                  onTap: () => context.goNamed("produits")),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: BoxContentService(
                  icon: BootstrapIcons.currency_dollar,
                  title: 'ventes',
                  onTap: () => context.goNamed('ventes')),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: BoxContentService(
                icon: BootstrapIcons.handbag,
                title: 'approv..',
                onTap: () => context.goNamed('signup'),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: BoxContentService(
                  icon: BootstrapIcons.signpost_2,
                  title: 'depenses',
                  onTap: () {}),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: BoxContentService(
                  icon: BootstrapIcons.pin, title: 'pertes', onTap: () {}),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: BoxContentService(
                icon: BootstrapIcons.pie_chart,
                title: 'statistiques',
                onTap: () {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: BoxContentService(
                  icon: BootstrapIcons.file_earmark_bar_graph,
                  title: 'rapports',
                  onTap: () {}),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: BoxContentService(
                  icon: BootstrapIcons.boxes, title: 'analyses', onTap: () {}),
            ),
          ],
        ),
        const SizedBox(height: 2),
      ],
    );
  }
}
