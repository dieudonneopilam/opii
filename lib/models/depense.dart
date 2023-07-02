// ignore_for_file: non_constant_identifier_names

import 'package:gestock/constants/device.dart';
import 'package:gestock/constants/type.dart';

class DepenseModel {
  final Map<String, dynamic> ese;
  final String uid;
  final double montant;
  final DEVISE_MONAIE devise_montant;
  final String motif_depense;
  final TYPE_DEPENSE type;
  final bool deleted;
  final String motif_deleted;
  final DateTime date_deleted;
  final DateTime date_depense;
  final DateTime timeStanp = DateTime.timestamp();
  final Map<String, dynamic> user_delete;
  final Map<String, dynamic> user_who_add;
  DepenseModel({
    required this.ese,
    required this.uid,
    required this.date_depense,
    required this.montant,
    required this.devise_montant,
    required this.motif_depense,
    required this.type,
    required this.deleted,
    required this.motif_deleted,
    required this.date_deleted,
    required this.user_delete,
    required this.user_who_add,
  });
  Map<String, dynamic> toJson() {
    return {
      'ese': ese,
      'uid': uid,
      'montant': montant,
      'devise_montant': devise_montant,
      'motif_depense': motif_depense,
      'type': type,
      'deleted': deleted,
      'motif_deleted': motif_deleted,
      'date_deleted': date_deleted,
      'timeStanp': timeStanp,
      'user_delete': user_delete,
      'user_who_add': user_who_add
    };
  }
}
