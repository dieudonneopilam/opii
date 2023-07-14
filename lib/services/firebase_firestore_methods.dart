// ignore_for_file: unused_field

import 'dart:math';

// import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreMethods {
  // final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Future<String> addProduit(
      String designation, String prix, String expression, String devise) async {
    String message = 'some error';
    int ran;
    ran = Random().nextInt(10);
    if (ran < 5) {
      throw Exception('une erreur');
    } else {
      message = 'success';
    }
    Future.delayed(const Duration(seconds: 5));
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
