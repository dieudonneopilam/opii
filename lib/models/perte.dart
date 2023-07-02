// ignore_for_file: non_constant_identifier_names

class PerteModel {
  final Map<String, dynamic> produit;
  final String uid;
  final int qte_perdu;
  final String motif_perte;
  final bool deleted;
  final DateTime date_deleted;
  final String motif_deleted;
  final DateTime date_perte;
  final DateTime timeStamp = DateTime.timestamp();
  final Map<String, dynamic> user_who_add;
  final Map<String, dynamic> user_delete;

  PerteModel({
    required this.produit,
    required this.uid,
    required this.qte_perdu,
    required this.motif_perte,
    required this.deleted,
    required this.date_deleted,
    required this.motif_deleted,
    required this.date_perte,
    required this.user_who_add,
    required this.user_delete,
  });
  Map<String, dynamic> toJson() {
    return {
      'produit': produit,
      'uid': uid,
      'qte_perdu': qte_perdu,
      'motif_perte': motif_perte,
      'deleted': deleted,
      'date_deleted': date_deleted,
      'motif_deleted': motif_deleted,
      'date_perte': date_perte,
      'timeStamp': timeStamp,
      'user_who_add': user_who_add,
      'user_delete': user_delete,
    };
  }
}
