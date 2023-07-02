// ignore_for_file: non_constant_identifier_names

import 'package:gestock/constants/device.dart';
import 'package:gestock/constants/type.dart';

class ApprovModel {
  final Map<String, dynamic> produit;
  final String uid;
  final int qte;
  final double cout;
  final DEVISE_MONAIE devise_cout;
  final TYPE_APPROV type;
  final bool deleted;
  final DateTime date_deleted;
  final DateTime date_approv;
  final DateTime timeStamp = DateTime.timestamp();
  final String motif_deleted;
  final Map<String, dynamic> user_who_add;
  final Map<String, dynamic> user_delete;
  ApprovModel({
    required this.produit,
    required this.uid,
    required this.date_approv,
    required this.qte,
    required this.cout,
    required this.devise_cout,
    required this.type,
    required this.deleted,
    required this.date_deleted,
    required this.motif_deleted,
    required this.user_who_add,
    required this.user_delete,
  });
  Map<String, dynamic> toJson() {
    return {
      'produit': produit,
      'uid': uid,
      'qte': qte,
      'devise_cout': devise_cout,
      'type': type,
      'deleted': deleted,
      'date_deleted': date_deleted,
      'timeStamp': timeStamp,
      'motif_deleted': motif_deleted,
      'user_who_add': user_who_add,
      'user_delete': user_delete
    };
  }
}
