// ignore_for_file: non_constant_identifier_names

import 'package:gestock/constants/device.dart';

class ProduitModel {
  final List<Map<String, dynamic>> ese;
  final String uid;
  final String name;
  final String description;
  final int stock_initial;
  final int stock_min;
  final int stock_alerte;
  final double prix_vente;
  final DEVISE_MONAIE devise_prix;
  final String urlImage;
  final List<Map<String, dynamic>> user_who_add;
  final bool deleted;
  final DateTime date_deleted;
  final String motif_deleted;
  final DateTime timeStamp = DateTime.timestamp();
  final DateTime date_created;

  ProduitModel({
    required this.ese,
    required this.prix_vente,
    required this.devise_prix,
    required this.urlImage,
    required this.date_created,
    required this.uid,
    required this.name,
    required this.description,
    required this.stock_initial,
    required this.stock_min,
    required this.stock_alerte,
    required this.user_who_add,
    this.deleted = false,
    required this.date_deleted,
    required this.motif_deleted,
  });
  Map<String, dynamic> toJson() {
    return {
      'ese': ese,
      'uid': uid,
      'name': name,
      'description': description,
      'stock_initial': stock_initial,
      'stock_min': stock_min,
      'stock_alerte': stock_alerte,
      'user_who_add': user_who_add,
      'deleted': deleted,
      'motif_deleted': motif_deleted,
      'date_deleted': date_deleted,
      'timeStamp': timeStamp,
      'prix_vente': prix_vente,
      'devise_prix': devise_prix,
      'urlImage': urlImage,
      'date_created': date_created
    };
  }
}
