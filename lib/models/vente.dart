// ignore_for_file: non_constant_identifier_names

class VenteModel {
  final Map<String, dynamic> produit;
  final String uid;
  final int qte_vendu;
  final double prix_vente;
  final bool deleted;
  final DateTime date_deleted;
  final DateTime date_vente;
  final String motif_deleted;
  final DateTime timeStamp = DateTime.timestamp();
  final Map<String, dynamic> user_who_vente;
  VenteModel({
    required this.user_who_vente,
    required this.produit,
    required this.date_vente,
    required this.uid,
    required this.qte_vendu,
    required this.prix_vente,
    this.deleted = false,
    required this.date_deleted,
    required this.motif_deleted,
  });
  Map<String, dynamic> toJson() {
    return {
      'produit': produit,
      'user_who_vente': user_who_vente,
      'uid': uid,
      'qte_vendu': qte_vendu,
      'deleted': deleted,
      'date_deleted': date_deleted,
      'motif_deleted': motif_deleted,
      'timeStamp': timeStamp,
      'date_vente': date_vente
    };
  }
}
