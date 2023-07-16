// ignore_for_file: unused_field, non_constant_identifier_names

import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireStoreMethods {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<String> addProduit({
    String? designation,
    String? prix,
    String? expression,
    String? devise,
    String? stock_init,
    String? stock_max,
    String? stock_min,
    Uint8List? file,
    String? stock_alert,
  }) async {
    String message = 'some error';

    // try {
    //   String uidProduit = const Uuid().v1();
    //   String urlImageproduit =
    //       await StorageMethods().uploadFileProduit(uidProduit, file!);
    //     DocumentSnapshot documentSnapshot =   await _firebaseFirestore.collection('users').doc(_auth.currentUser!.uid).get();
    //   ProduitModel produitModel = ProduitModel(ese: {}, prix_vente: prix_vente, devise_prix: devise_prix, urlImage: urlImage, date_created: date_created, uid: uid, name: name, description: description, stock_initial: stock_initial, stock_min: stock_min, stock_alerte: stock_alerte, user_who_add: user_who_add, date_deleted: date_deleted, motif_deleted: motif_deleted)
    //   await _firebaseFirestore.collection('produits').doc().set(data);
    // } catch (e) {}

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
