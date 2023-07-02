// ignore_for_file: non_constant_identifier_names

import 'package:gestock/constants/etat.dart';
import 'package:gestock/constants/type.dart';

class ServiceModel {
  final String uid;
  final TYPE_SERVICE type;
  final EtatService etat;
  final String title;
  final String description;
  final List<Map<String, dynamic>> list_url;
  final List<Map<String, dynamic>> montant;
  final Map<String, dynamic> user_who_add;
  final DateTime date_created;
  ServiceModel({
    required this.uid,
    required this.title,
    required this.etat,
    required this.type,
    required this.description,
    required this.list_url,
    required this.montant,
    required this.user_who_add,
    required this.date_created,
  });
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'type': type,
      'etat': etat,
      'title': title,
      'description': description,
      'list_url': list_url,
      'montant': montant,
      'user_who_add': user_who_add,
      'date_created': date_created
    };
  }
}
