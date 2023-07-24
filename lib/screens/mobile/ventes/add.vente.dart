import 'package:flutter/material.dart';
import 'package:gestock/constants/etat.dart';
import 'package:gestock/utils/colors.dart';
import 'package:gestock/widgets/mobile/field/field1.dart';

class AddVente extends StatelessWidget {
   AddVente({super.key});
  
  final TextEditingController quantitteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nouvelle vente'),centerTitle: true,toolbarHeight: 80,elevation: 1,backgroundColor: bgcolorwhite,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            TextField1(label: 'Quantite vendue', controller: quantitteController, onChanged: () {}, etatField: EtatField.none)
          ],),
        ),
      ),
    );
  }
}