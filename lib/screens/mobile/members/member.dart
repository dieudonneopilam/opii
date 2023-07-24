import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

import '../../../widgets/mobile/shared/box/boxcontentmember.dart';
import '../../../widgets/mobile/shared/box/boxcontentpage.dart';

class MembersPages extends StatelessWidget {
  const MembersPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: BoxContentPage(
        titleBoxContent: 'our users',
        titlePage: 'Members',
        boxContent: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => const BoxContentMember(),
        ),
      ),
    );
  }
}
