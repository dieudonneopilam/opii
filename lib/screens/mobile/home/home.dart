import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:gestock/widgets/mobile/shared/box/boxcontentpage.dart';

import '../../../widgets/mobile/shared/box/box.all.service.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            toolbarHeight: 70,
            centerTitle: true,
            title: const Text('Tesla Companie'),
            actions: const [
              Icon(BootstrapIcons.bell),
              SizedBox(width: 20),
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/img/bg.jpeg'),
              ),
              SizedBox(width: 20)
            ],
          ),
        body: const BoxContentPage(
      titleBoxContent: 'vos services',
      titlePage: 'Bienvenu',
      boxContent: BoxAllService(),
    ));
  }
}
