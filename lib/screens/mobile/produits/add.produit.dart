// ignore_for_file: unnecessary_null_comparison, non_constant_identifier_names, unused_field, prefer_final_fields

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestock/constants/etat.dart';
import 'package:gestock/logic/produits/add.produit/add_produit_bloc.dart';
import 'package:gestock/utils/colors.dart';
import 'package:gestock/utils/pickimage.dart';
import 'package:gestock/widgets/mobile/field/dropdownlist.dart';
import 'package:gestock/widgets/mobile/shared/text_moy.dart';
import 'package:gestock/widgets/mobile/shared/text_small.dart';
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
  TextEditingController stock_initialController = TextEditingController();
  TextEditingController stock_alerteController = TextEditingController();
  TextEditingController stock_minController = TextEditingController();
  TextEditingController stock_maxController = TextEditingController();
  Uint8List? img;
  List<String> _currencies = ['USD', 'FC'];
  String _selectedCurrency = 'USD';

  void selectImage() async {
    Uint8List? i = await PickerImage().pickimage(ImageSource.gallery);
    setState(() {
      if (i != null) {
        img = i;
        context.read<AddProduitBloc>().add(OnChangedImage(img: img!));
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
                  ? Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: MemoryImage(img!), fit: BoxFit.cover)),
                        ),
                        Expanded(child: Container()),
                        TextSmal(text: 'Edit', color: colorBlue),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: selectImage,
                          child: Icon(Icons.edit, color: colorBlue),
                        ),
                        const SizedBox(width: 10)
                      ],
                    )
                  : GestureDetector(
                      onTap: () => selectImage(),
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.photo, size: 50, color: colorBlue),
                            TextSmal(
                                text: 'selectionner la photo du produit',
                                color: colorBlue)
                          ],
                        ),
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
                  type: TextInputType.number,
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
                return DropDownFieldList(
                  currencies: _currencies,
                  selectedCurrency: _selectedCurrency,
                  label: 'Devise de prix de vente',
                  etatField: state.devise,
                  onChanged: (value) {
                    setState(() {
                      _selectedCurrency = value;
                    });
                    context
                        .read<AddProduitBloc>()
                        .add(OnChangedDevise(devise: value));
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
                  type: TextInputType.number,
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
                  type: TextInputType.number,
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
                  type: TextInputType.number,
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
                  type: TextInputType.number,
                  label: 'Stock Maximum',
                  onChanged: () {
                    context.read<AddProduitBloc>().add(
                        OnChangedStockMax(stock_max: stock_maxController.text));
                  },
                );
              },
            ),
            BlocConsumer<AddProduitBloc, AddProduitState>(
              listener: (context, state) {
                (state as AddProduitInitial);
                if (state.etat_request == EtatRequest.loaded) {
                  context.goNamed('produits');
                }
              },
              builder: (context, state) {
                (state as AddProduitInitial);
                return (state.etat_request == EtatRequest.loading)
                    ? Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: const LinearProgressIndicator(),
                      )
                    : BoutonContainer(
                        title: 'enregistrer',
                        onSubmit: () {
                          if (img != null) {
                            context
                                .read<AddProduitBloc>()
                                .add(OnSubmitFormEvent(
                                  context: context,
                                  designation: designationController.text,
                                  devise: _selectedCurrency,
                                  expression: expressionController.text,
                                  file: img!,
                                  prix_vente: prixController.text,
                                  stock_alerte: stock_alerteController.text,
                                  stock_initial: stock_initialController.text,
                                  stock_max: stock_maxController.text,
                                  stock_min: stock_minController.text,
                                ));
                          }
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
