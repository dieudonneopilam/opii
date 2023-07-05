import 'package:flutter/material.dart';
import 'package:gestock/widgets/mobile/shared/box/boxcontentpage.dart';
import '../../../widgets/mobile/shared/box/boxcontentabonnemnt.dart';

class AbonmentPage extends StatelessWidget {
  const AbonmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BoxContentPage(
      titleBoxContent: 'Delai abonnement',
      titlePage: 'Abonnement',
      boxContent: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) => const BoxContentAbonnemnt(),
      ),
    ));
  }
}
