import 'package:flutter/material.dart';
import 'package:gestock/widgets/mobile/shared/box/boxcontentpage.dart';
import '../../../widgets/mobile/shared/box/box.all.service.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: BoxContentPage(
      titleBoxContent: 'vos services',
      titlePage: 'Bienvenu',
      boxContent: BoxAllService(),
    ));
  }
}
