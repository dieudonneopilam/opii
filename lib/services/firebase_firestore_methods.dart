// ignore_for_file: unused_field, non_constant_identifier_names, unnecessary_null_comparison

import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gestock/utils/snackbar.dart';
import 'package:uuid/uuid.dart';

import '../models/produit.dart';
import 'firebase_storage_methods.dart';

class FireStoreMethods {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<String> addProduit(
      String designation,
      String prix_vente,
      String expression,
      String devise,
      String stock_init,
      String stock_max,
      String stock_min,
      Uint8List file,
      String stock_alert,
      BuildContext context) async {
    String message = 'some error';

    if (designation.isNotEmpty &&
        prix_vente.isNotEmpty &&
        expression.isNotEmpty &&
        devise.isNotEmpty &&
        stock_alert.isNotEmpty &&
        stock_init.isNotEmpty &&
        stock_max.isNotEmpty &&
        file != null &&
        stock_min.isNotEmpty) {
      try {
        String uidProduit = const Uuid().v1();
        String urlImageproduit =
            await StorageMethods().uploadFileProduit(uidProduit, file);
        final documentSnapshot = await _firebaseFirestore
            .collection('users')
            .doc(_auth.currentUser!.uid)
            .get();

        Map<String, dynamic> ese = documentSnapshot.data()!;
        ProduitModel produitModel = ProduitModel(
          ese: ese['ese'],
          expression: expression,
          stock: stock_init,
          prix_vente: prix_vente,
          devise_prix: devise,
          urlImage: urlImageproduit,
          date_created: DateTime.now(),
          uid: uidProduit,
          designation: designation,
          stock_initial: stock_init,
          stock_min: stock_min,
          stock_alerte: stock_alert,
          user_who_add: {
            'uid': _auth.currentUser!.uid,
            'name': documentSnapshot['email'],
          },
          date_deleted: DateTime.now(),
          motif_deleted: '',
        );
        await _firebaseFirestore
            .collection('produits')
            .doc()
            .set(produitModel.toJson());
        message = 'success';
      } catch (e) {
        message = e.toString();
      }
    } else {
      showSnackBar(context, devise, Colors.red);
    }

    return message;
  }

  Future<String> addUser() async {
    String message = 'some error';
    return message;
  }

  Future<String> addvente() async {
    String message = 'some error';
    return message;
  }

  Future<String> addApprov() async {
    String message = 'some error';
    return message;
  }

  Future<String> addDepense() async {
    String message = 'some error';
    return message;
  }

  Future<String> addPerte() async {
    String message = 'some error';
    return message;
  }

  Future<String> addRapport() async {
    String message = 'some error';
    return message;
  }

  Future<String> addService() async {
    String message = 'some error';
    return message;
  }

  Future<String> addAbonnement() async {
    String message = 'some error';
    return message;
  }
}
