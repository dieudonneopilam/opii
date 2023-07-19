// ignore_for_file: unused_field, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gestock/models/entreprise.dart';
import 'package:gestock/models/user.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

import '../utils/snackbar.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Future<String> loginUserWithEmail(String email, String password) async {
    String message = 'some error';
    return message;
  }

  Future<String> signUserWithEmail(
      String email, String password, BuildContext context) async {
    String message = 'some error';

    try {
      String uidEntreprise = const Uuid().v1();
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      final EntrepriseModel entrepriseModel = EntrepriseModel(
          uid: uidEntreprise,
          adresse: [],
          phone: '',
          date_created: DateTime.now(),
          ca_mensuel: 0,
          devise_ca_mensuel: '',
          email: email,
          name: '',
          etat: 'open',
          motif_etat: '');

      final UserModel userModel = UserModel(
          ese: {'uid': uidEntreprise},
          uid: userCredential.user!.uid,
          date_created: DateTime.now(),
          role: 'admin',
          phone: '',
          type: 'chef',
          user_who_add: {},
          password: password,
          date_deleted: DateTime.now(),
          motif_deleted: '',
          email: email,
          name: '');
      await _firebaseFirestore
          .collection('entreprises')
          .doc(uidEntreprise)
          .set(entrepriseModel.toJson());
      await _firebaseFirestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .set(userModel.toJson());
      message = 'success';

      context.goNamed('login');
    } catch (e) {
      message = e.toString();
      showSnackBar(context, message, Colors.red);
    }
    return message;
  }

  Future<String> singInWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    String message = 'somme error';
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      context.goNamed('home');
    } catch (e) {
      showSnackBar(context, e.toString(), Colors.red);
    }
    return message;
  }
}
