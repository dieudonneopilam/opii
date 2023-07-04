import 'package:flutter/material.dart';

import '../../../widgets/mobile/shared/box/boxcontentmember.dart';
import '../../../widgets/mobile/shared/box/boxcontentpage.dart';

class MembersPages extends StatelessWidget {
  const MembersPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
