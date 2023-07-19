// ignore_for_file: non_constant_identifier_names

class ProduitModel {
  final Map<String, dynamic> ese;
  final String uid;
  final String designation;
  final String stock_initial;
  final String stock_min;
  final String stock_alerte;
  final String prix_vente;
  final String stock;
  final String devise_prix;
  final String urlImage;
  final Map<String, dynamic> user_who_add;
  final bool deleted;
  final DateTime date_deleted;
  final String motif_deleted;
  final DateTime timeStamp = DateTime.timestamp();
  final DateTime date_created;

  ProduitModel({
    required this.ese,
    required this.stock,
    required this.prix_vente,
    required this.devise_prix,
    required this.urlImage,
    required this.date_created,
    required this.uid,
    required this.designation,
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
      'designation': designation,
      'stock_initial': stock_initial,
      'stock_min': stock_min,
      'stock_alerte': stock_alerte,
      'user_who_add': user_who_add,
      'deleted': deleted,
      'motif_deleted': motif_deleted,
      'date_deleted': date_deleted,
      'timeStamp': timeStamp,
      'prix_vente': prix_vente,
      'stock': stock,
      'devise_prix': devise_prix,
      'urlImage': urlImage,
      'date_created': date_created
    };
  }

  static ProduitModel formDataJson(Map data) {
    return ProduitModel(
        ese: data['ese'],
        stock: data['stock'],
        prix_vente: data['prix_vente'],
        devise_prix: data['devise_prix'],
        urlImage: data['urlImage'],
        date_created: DateTime.timestamp(),
        uid: data['uid'],
        designation: data['designation'],
        stock_initial: data['stock_initial'],
        stock_min: data['stock_min'],
        stock_alerte: data['stock_alerte'],
        user_who_add: data['user_who_add'],
        date_deleted: DateTime.timestamp(),
        motif_deleted: data['motif_deleted']);
  }
}
