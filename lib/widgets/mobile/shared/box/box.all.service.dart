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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BoxContentService(
                icon: Icons.tag,
                title: 'produits',
                onTap: () => context.goNamed("produits")),
            Expanded(child: Container()),
            BoxContentService(
                icon: Icons.cable_rounded,
                title: 'abc',
                onTap: () => context.goNamed('ventes')),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BoxContentService(icon: Icons.abc, title: 'abc', onTap: () {}),
            Expanded(child: Container()),
            BoxContentService(icon: Icons.abc, title: 'abc', onTap: () {}),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BoxContentService(icon: Icons.abc, title: 'abc', onTap: () {}),
            Expanded(child: Container()),
            BoxContentService(icon: Icons.abc, title: 'abc', onTap: () {}),
          ],
        )
      ],
    );
  }
}
