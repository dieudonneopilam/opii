// ignore_for_file: depend_on_referenced_packages, unnecessary_null_comparison

import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gestock/constants/etat.dart';
import 'package:gestock/services/firebase_firestore_methods.dart';
import 'package:gestock/utils/snackbar.dart';

part 'add_produit_event.dart';
part 'add_produit_state.dart';

class AddProduitBloc extends Bloc<AddProduitEvent, AddProduitState> {
  final FireStoreMethods fireStoreMethods = FireStoreMethods();
  AddProduitBloc()
      : super(const AddProduitInitial(
            designation: EtatField.none,
            prix: EtatField.none,
            devise: EtatField.none,
            expression: EtatField.none,
            etat: EtatField.none,
            image: EtatField.none,
            stock_alerte: EtatField.none,
            stock_initial: EtatField.none,
            etat_request: EtatRequest.none,
            stock_max: EtatField.none,
            stock_min: EtatField.none)) {
    on<OnChangedDesignation>((event, emit) {
      if (event.designation.isNotEmpty) {
        emit((state as AddProduitInitial)
            .copyWith(designation: EtatField.valid));
      } else {
        emit((state as AddProduitInitial)
            .copyWith(designation: EtatField.invalid));
      }
      ((state as AddProduitInitial).designation == EtatField.valid &&
                  (state as AddProduitInitial).prix == EtatField.valid &&
                  (state as AddProduitInitial).expression == EtatField.valid &&
                  (state as AddProduitInitial).devise == EtatField.valid) &&
              (state as AddProduitInitial).stock_alerte == EtatField.valid &&
              (state as AddProduitInitial).stock_max == EtatField.valid &&
              (state as AddProduitInitial).stock_min == EtatField.valid &&
              (state as AddProduitInitial).image == EtatField.valid &&
              (state as AddProduitInitial).stock_initial == EtatField.valid
          ? emit((state as AddProduitInitial).copyWith(etat: EtatField.valid))
          : emit(
              (state as AddProduitInitial).copyWith(etat: EtatField.invalid));
    });
    on<OnChangedExpression>((event, emit) {
      if (event.expression.isNotEmpty) {
        emit(
            (state as AddProduitInitial).copyWith(expression: EtatField.valid));
      } else {
        emit((state as AddProduitInitial)
            .copyWith(expression: EtatField.invalid));
      }
      ((state as AddProduitInitial).designation == EtatField.valid &&
                  (state as AddProduitInitial).prix == EtatField.valid &&
                  (state as AddProduitInitial).expression == EtatField.valid &&
                  (state as AddProduitInitial).devise == EtatField.valid) &&
              (state as AddProduitInitial).stock_alerte == EtatField.valid &&
              (state as AddProduitInitial).stock_max == EtatField.valid &&
              (state as AddProduitInitial).stock_min == EtatField.valid &&
              (state as AddProduitInitial).image == EtatField.valid &&
              (state as AddProduitInitial).stock_initial == EtatField.valid
          ? emit((state as AddProduitInitial).copyWith(etat: EtatField.valid))
          : emit(
              (state as AddProduitInitial).copyWith(etat: EtatField.invalid));
    });
    on<OnChangedStockMin>((event, emit) {
      if (event.stock_min.isNotEmpty) {
        emit((state as AddProduitInitial).copyWith(stock_min: EtatField.valid));
      } else {
        emit((state as AddProduitInitial)
            .copyWith(stock_min: EtatField.invalid));
      }
      ((state as AddProduitInitial).designation == EtatField.valid &&
                  (state as AddProduitInitial).prix == EtatField.valid &&
                  (state as AddProduitInitial).expression == EtatField.valid &&
                  (state as AddProduitInitial).devise == EtatField.valid) &&
              (state as AddProduitInitial).stock_alerte == EtatField.valid &&
              (state as AddProduitInitial).stock_max == EtatField.valid &&
              (state as AddProduitInitial).stock_min == EtatField.valid &&
              (state as AddProduitInitial).image == EtatField.valid &&
              (state as AddProduitInitial).stock_initial == EtatField.valid
          ? emit((state as AddProduitInitial).copyWith(etat: EtatField.valid))
          : emit(
              (state as AddProduitInitial).copyWith(etat: EtatField.invalid));
    });
    on<OnChangedStockAlerte>((event, emit) {
      if (event.stock_alerte.isNotEmpty) {
        emit((state as AddProduitInitial)
            .copyWith(stock_alerte: EtatField.valid));
      } else {
        emit((state as AddProduitInitial)
            .copyWith(stock_alerte: EtatField.invalid));
      }
      ((state as AddProduitInitial).designation == EtatField.valid &&
                  (state as AddProduitInitial).prix == EtatField.valid &&
                  (state as AddProduitInitial).expression == EtatField.valid &&
                  (state as AddProduitInitial).devise == EtatField.valid) &&
              (state as AddProduitInitial).stock_alerte == EtatField.valid &&
              (state as AddProduitInitial).stock_max == EtatField.valid &&
              (state as AddProduitInitial).stock_min == EtatField.valid &&
              (state as AddProduitInitial).image == EtatField.valid &&
              (state as AddProduitInitial).stock_initial == EtatField.valid
          ? emit((state as AddProduitInitial).copyWith(etat: EtatField.valid))
          : emit(
              (state as AddProduitInitial).copyWith(etat: EtatField.invalid));
    });
    on<OnChangedStockInit>((event, emit) {
      if (event.stock_init.isNotEmpty) {
        emit((state as AddProduitInitial)
            .copyWith(stock_initial: EtatField.valid));
      } else {
        emit((state as AddProduitInitial)
            .copyWith(stock_initial: EtatField.invalid));
      }
      ((state as AddProduitInitial).designation == EtatField.valid &&
                  (state as AddProduitInitial).prix == EtatField.valid &&
                  (state as AddProduitInitial).expression == EtatField.valid &&
                  (state as AddProduitInitial).devise == EtatField.valid) &&
              (state as AddProduitInitial).stock_alerte == EtatField.valid &&
              (state as AddProduitInitial).stock_max == EtatField.valid &&
              (state as AddProduitInitial).stock_min == EtatField.valid &&
              (state as AddProduitInitial).image == EtatField.valid &&
              (state as AddProduitInitial).stock_initial == EtatField.valid
          ? emit((state as AddProduitInitial).copyWith(etat: EtatField.valid))
          : emit(
              (state as AddProduitInitial).copyWith(etat: EtatField.invalid));
    });
    on<OnChangedImage>((event, emit) {
      if (event.img != null) {
        emit((state as AddProduitInitial).copyWith(image: EtatField.valid));
      } else {
        emit((state as AddProduitInitial).copyWith(image: EtatField.invalid));
      }
      ((state as AddProduitInitial).designation == EtatField.valid &&
                  (state as AddProduitInitial).prix == EtatField.valid &&
                  (state as AddProduitInitial).expression == EtatField.valid &&
                  (state as AddProduitInitial).devise == EtatField.valid) &&
              (state as AddProduitInitial).stock_alerte == EtatField.valid &&
              (state as AddProduitInitial).stock_max == EtatField.valid &&
              (state as AddProduitInitial).stock_min == EtatField.valid &&
              (state as AddProduitInitial).image == EtatField.valid &&
              (state as AddProduitInitial).stock_initial == EtatField.valid
          ? emit((state as AddProduitInitial).copyWith(etat: EtatField.valid))
          : emit(
              (state as AddProduitInitial).copyWith(etat: EtatField.invalid));
    });
    on<OnChangedStockMax>((event, emit) {
      if (event.stock_max.isNotEmpty) {
        emit((state as AddProduitInitial).copyWith(stock_max: EtatField.valid));
      } else {
        emit((state as AddProduitInitial)
            .copyWith(stock_max: EtatField.invalid));
      }
      ((state as AddProduitInitial).designation == EtatField.valid &&
                  (state as AddProduitInitial).prix == EtatField.valid &&
                  (state as AddProduitInitial).expression == EtatField.valid &&
                  (state as AddProduitInitial).devise == EtatField.valid) &&
              (state as AddProduitInitial).stock_alerte == EtatField.valid &&
              (state as AddProduitInitial).stock_max == EtatField.valid &&
              (state as AddProduitInitial).stock_min == EtatField.valid &&
              (state as AddProduitInitial).image == EtatField.valid &&
              (state as AddProduitInitial).stock_initial == EtatField.valid
          ? emit((state as AddProduitInitial).copyWith(etat: EtatField.valid))
          : emit(
              (state as AddProduitInitial).copyWith(etat: EtatField.invalid));
    });
    on<OnChangedPrix>((event, emit) {
      if (event.prix.isNotEmpty) {
        emit((state as AddProduitInitial).copyWith(prix: EtatField.valid));
      } else {
        emit((state as AddProduitInitial).copyWith(prix: EtatField.invalid));
      }
      ((state as AddProduitInitial).designation == EtatField.valid &&
                  (state as AddProduitInitial).prix == EtatField.valid &&
                  (state as AddProduitInitial).expression == EtatField.valid &&
                  (state as AddProduitInitial).devise == EtatField.valid) &&
              (state as AddProduitInitial).stock_alerte == EtatField.valid &&
              (state as AddProduitInitial).stock_max == EtatField.valid &&
              (state as AddProduitInitial).stock_min == EtatField.valid &&
              (state as AddProduitInitial).image == EtatField.valid &&
              (state as AddProduitInitial).stock_initial == EtatField.valid
          ? emit((state as AddProduitInitial).copyWith(etat: EtatField.valid))
          : emit(
              (state as AddProduitInitial).copyWith(etat: EtatField.invalid));
    });
    on<OnChangedDevise>((event, emit) {
      if (event.devise.isNotEmpty) {
        emit((state as AddProduitInitial).copyWith(devise: EtatField.valid));
      } else {
        emit((state as AddProduitInitial).copyWith(devise: EtatField.invalid));
      }
      ((state as AddProduitInitial).designation == EtatField.valid &&
                  (state as AddProduitInitial).prix == EtatField.valid &&
                  (state as AddProduitInitial).expression == EtatField.valid &&
                  (state as AddProduitInitial).devise == EtatField.valid) &&
              (state as AddProduitInitial).stock_alerte == EtatField.valid &&
              (state as AddProduitInitial).stock_max == EtatField.valid &&
              (state as AddProduitInitial).stock_min == EtatField.valid &&
              (state as AddProduitInitial).image == EtatField.valid &&
              (state as AddProduitInitial).stock_initial == EtatField.valid
          ? emit((state as AddProduitInitial).copyWith(etat: EtatField.valid))
          : emit(
              (state as AddProduitInitial).copyWith(etat: EtatField.invalid));
    });
    on<OnSubmitFormEvent>((event, emit) async {
      if ((state as AddProduitInitial).etat == EtatField.none) {
        showSnackBar(
            event.context, 'Veillez remplir votre formulaire', Colors.red);
      }
      if ((state as AddProduitInitial).etat == EtatField.invalid) {
        showSnackBar(
            event.context, 'Veillez valider les champs exigés', Colors.red);
      } else {
        emit((state as AddProduitInitial)
            .copyWith(etat_request: EtatRequest.loading));
        try {
          await fireStoreMethods.addProduit(
            event.designation,
            event.prix_vente,
            event.expression,
            event.devise,
            event.stock_initial,
            event.stock_max,
            event.stock_min,
            event.file,
            event.stock_alerte,
            event.context,
          );
          emit((state as AddProduitInitial)
              .copyWith(etat_request: EtatRequest.loaded));
        } catch (e) {
          showSnackBar(event.context, 'Echec...', Colors.red);
          emit((state as AddProduitInitial)
              .copyWith(etat_request: EtatRequest.error));
        }
      }
    });
  }
}
