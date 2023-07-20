import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gestock/models/produit.dart';
import 'package:gestock/utils/colors.dart';
import 'package:gestock/widgets/mobile/shared/text_moy.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import '../../../widgets/mobile/shared/bouton.round.dart';
import '../../../widgets/mobile/shared/box/boxcontentproduit.dart';

class ProduitsPage extends StatelessWidget {
  ProduitsPage({super.key});
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final produit = FirebaseFirestore.instance
      .collection('produits')
      .where('ese', isEqualTo: {'uid': '69c9b960-24c1-11ee-ad0f-e5bef9495bf8'});
  final Stream<QuerySnapshot> produits = FirebaseFirestore.instance
      .collection('produits')
      .where('ese', isEqualTo: {
    'uid': '69c9b960-24c1-11ee-ad0f-e5bef9495bf8'
  }).snapshots();

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
      body: StreamBuilder<QuerySnapshot>(
        stream: produits,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          }
          if (snapshot.data!.docs.isEmpty) {
            return const Text('non data');
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              return BoxContentProduit(
                produit: ProduitModel.formDataJson(data),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
