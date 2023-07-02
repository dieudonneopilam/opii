// ignore_for_file: non_constant_identifier_names

class RapportDay {
  final Map<String, dynamic> ese;
  final String uid;
  final double montant_ca_all;
  final double montant_depense_all;
  final double montant_perte;
  final double montant_encaisse;
  final Map<String, dynamic> user_who_add;
  final bool deleted;
  final DateTime date_deleted;
  final DateTime date_rapport;
  final DateTime timeStamp = DateTime.timestamp();
  final String motif_deleted;
  final Map<String, dynamic> user_delete;
  final List<Map<String, dynamic>> list_produits;
  RapportDay({
    required this.ese,
    required this.uid,
    required this.montant_ca_all,
    required this.montant_depense_all,
    required this.montant_perte,
    required this.montant_encaisse,
    required this.user_who_add,
    required this.deleted,
    required this.date_deleted,
    required this.date_rapport,
    required this.motif_deleted,
    required this.user_delete,
    required this.list_produits,
  });
  Map<String, dynamic> toJson() {
    return {
      'ese': ese,
      'uid': uid,
      'montant_ca_all': montant_ca_all,
      'montant_depense_all': montant_depense_all,
      'montant_perte': montant_perte,
      'montant_encaisse': montant_encaisse,
      'user_who_add': user_who_add,
      'deleted': deleted,
      'date_deleted': date_deleted,
      'date_rapport': date_rapport,
      'timeStamp': timeStamp,
      'motif_deleted': motif_deleted,
      'user_delete': user_delete,
      'list_produits': list_produits
    };
  }
}
