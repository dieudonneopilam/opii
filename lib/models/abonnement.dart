// ignore_for_file: non_constant_identifier_names

import 'package:gestock/constants/etat.dart';

class Abonnement {
  final String uid;
  final Map<String, dynamic> service;
  final Map<String, dynamic> ese;
  final DateTime date_created;
  final DateTime timeStamp = DateTime.timestamp();
  final DateTime date_debut;
  final DateTime date_fin;
  final int dure_mois;
  final ETAT_ABONNEMENT etat;
  Abonnement({
    required this.uid,
    required this.service,
    required this.ese,
    required this.date_created,
    required this.date_debut,
    required this.date_fin,
    required this.dure_mois,
    required this.etat,
  });
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'service': service,
      'ese': ese,
      'date_created': date_created,
      'date_debut': date_debut,
      'date_fin': date_fin,
      'dure_mois': dure_mois,
      'etat': etat,
      'timeStamp': timeStamp
    };
  }
}
