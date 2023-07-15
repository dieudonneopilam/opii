// ignore_for_file: unused_field, non_constant_identifier_names

import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreMethods {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
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
