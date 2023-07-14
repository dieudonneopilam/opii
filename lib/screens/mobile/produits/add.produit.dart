// ignore_for_file: unnecessary_null_comparison, non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestock/constants/etat.dart';
import 'package:gestock/logic/add.produit/add_produit_bloc.dart';
import 'package:gestock/utils/colors.dart';
import 'package:gestock/utils/pickimage.dart';
import 'package:gestock/widgets/mobile/shared/text_moy.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import '../../../widgets/mobile/field/field1.dart';
import '../../../widgets/mobile/shared/boutoncontainer.dart';

class AddProduitPage extends StatefulWidget {
  const AddProduitPage({super.key});

  @override
  State<AddProduitPage> createState() => _AddProduitPageState();
}

class _AddProduitPageState extends State<AddProduitPage> {
  TextEditingController designationController = TextEditingController();
  TextEditingController expressionController = TextEditingController();
  TextEditingController prixController = TextEditingController();
  TextEditingController deviseController = TextEditingController();
  TextEditingController stock_initialController = TextEditingController();
  TextEditingController stock_alerteController = TextEditingController();
  TextEditingController stock_minController = TextEditingController();
  TextEditingController stock_maxController = TextEditingController();
  Uint8List? img;

  void selectImage() async {
    Uint8List? i = await PickerImage().pickimage(ImageSource.gallery);
    setState(() {
      if (i != null) {
        img = i;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: colorBlue,
        title: TextMoy(
            text: 'Ajouter un nouveau produit'.toUpperCase(),
            color: bgcolorwhite),
        leading: IconButton(
            onPressed: () {},
            icon: IconButton(
                onPressed: () => context.pop(),
                icon: Icon(
                  Icons.close,
                  size: 30,
                  color: bgcolorwhite,
                ))),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: img != null
                  ? Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: MemoryImage(img!), fit: BoxFit.cover)),
                    )
                  : GestureDetector(
                      onTap: () => selectImage(),
                      child: Row(
                        children: [
                          Icon(Icons.photo, size: 50, color: colorBlue),
                          const Text('selectionner la photo du produit')
                        ],
                      ),
                    ),
            ),
            BlocBuilder<AddProduitBloc, AddProduitState>(
              builder: (context, state) {
                (state as AddProduitInitial);
                return TextField1(
                  etatField: state.designation,
                  controller: designationController,
                  label: 'Designation produit',
                  onChanged: () {
                    context.read<AddProduitBloc>().add(OnChangedDesignation(
                        designation: designationController.text));
                  },
                );
              },
            ),
            BlocBuilder<AddProduitBloc, AddProduitState>(
                builder: (context, state) {
              (state as AddProduitInitial);
              return TextField1(
                etatField: (state).expression,
                controller: expressionController,
                label: 'Expression produit',
                onChanged: () {
                  context.read<AddProduitBloc>().add(OnChangedExpression(
                      expression: expressionController.text));
                },
              );
            }),
            BlocBuilder<AddProduitBloc, AddProduitState>(
              builder: (context, state) {
                (state as AddProduitInitial);
                return TextField1(
                  etatField: state.prix,
                  controller: prixController,
                  label: 'Prix vente produit',
                  onChanged: () {
                    context
                        .read<AddProduitBloc>()
                        .add(OnChangedPrix(prix: prixController.text));
                  },
                );
              },
            ),
            BlocBuilder<AddProduitBloc, AddProduitState>(
              builder: (context, state) {
                (state as AddProduitInitial);
                return TextField1(
                  etatField: state.devise,
                  controller: deviseController,
                  label: 'Devise Prix',
                  onChanged: () {
                    context
                        .read<AddProduitBloc>()
                        .add(OnChangedDevise(devise: deviseController.text));
                  },
                );
              },
            ),
            BlocBuilder<AddProduitBloc, AddProduitState>(
              builder: (context, state) {
                (state as AddProduitInitial);
                return TextField1(
                  etatField: state.stock_initial,
                  controller: stock_initialController,
                  label: 'Stock Initial',
                  onChanged: () {
                    context.read<AddProduitBloc>().add(OnChangedStockInit(
                        stock_init: stock_initialController.text));
                  },
                );
              },
            ),
            BlocBuilder<AddProduitBloc, AddProduitState>(
              builder: (context, state) {
                (state as AddProduitInitial);
                return TextField1(
                  etatField: state.stock_alerte,
                  controller: stock_alerteController,
                  label: 'Stock Alerte',
                  onChanged: () {
                    context.read<AddProduitBloc>().add(OnChangedStockAlerte(
                        stock_alerte: stock_alerteController.text));
                  },
                );
              },
            ),
            BlocBuilder<AddProduitBloc, AddProduitState>(
              builder: (context, state) {
                (state as AddProduitInitial);
                return TextField1(
                  etatField: state.stock_min,
                  controller: stock_minController,
                  label: 'Stock Minimum',
                  onChanged: () {
                    context.read<AddProduitBloc>().add(
                        OnChangedStockMin(stock_min: stock_minController.text));
                  },
                );
              },
            ),
            BlocBuilder<AddProduitBloc, AddProduitState>(
              builder: (context, state) {
                (state as AddProduitInitial);
                return TextField1(
                  etatField: state.stock_max,
                  controller: stock_maxController,
                  label: 'Stock Maximum',
                  onChanged: () {
                    context.read<AddProduitBloc>().add(
                        OnChangedStockMax(stock_max: stock_maxController.text));
                  },
                );
              },
            ),
            BlocBuilder<AddProduitBloc, AddProduitState>(
              builder: (context, state) {
                (state as AddProduitInitial);
                return state.etat == EtatField.valid
                    ? Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: const LinearProgressIndicator())
                    : BoutonContainer(
                        title: 'enregistrer',
                        onSubmit: () {
                          context
                              .read<AddProduitBloc>()
                              .add(OnSubmitFormEvent(context: context));
                        },
                        etatButton: state.etat);
              },
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
