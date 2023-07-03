// ignore_for_file: unused_field

import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<String> loginUserWithEmail(String email, String password) async {
    String message = 'some error';
    return message;
  }

  Future<String> loginUserWithGoogle(String email, String password) async {
    String message = 'some error';
    return message;
  }

  Future<String> loginUserPhone(String email, String password) async {
    String message = 'some error';
    return message;
  }

  Future<String> loginUserApple(String email, String password) async {
    String message = 'some error';
    return message;
  }

  Future<String> loginUserFacebook(String email, String password) async {
    String message = 'some error';
    return message;
  }

  Future<String> signUserWithEmail(String email, String password) async {
    String message = 'some error';
    return message;
  }

  Future<String> signUpWithPhone(String email, String password) async {
    String message = 'some error';
    return message;
  }

  Future<String> signUpWithGoogle(String email, String password) async {
    String message = 'some error';
    return message;
  }

  Future<String> signUpWithApple(String email, String password) async {
    String message = 'some error';
    return message;
  }

  Future<String> signUpWithFacebook(String email, String password) async {
    String message = 'some error';
    return message;
  }
}
