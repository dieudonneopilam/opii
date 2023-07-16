// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

class EntrepriseModel {
  final String uid;
  final String name;
  final String email;
  final String etat;
  final String phone;
  final List<Map<String, dynamic>> adresse;
  final int ca_mensuel;
  final String devise_ca_mensuel;
  final DateTime timeStamp = DateTime.timestamp();
  final DateTime date_created;
  final String motif_etat;

  EntrepriseModel({
    required this.uid,
    required this.adresse,
    required this.phone,
    required this.date_created,
    required this.ca_mensuel,
    required this.devise_ca_mensuel,
    required this.email,
    required this.name,
    required this.etat,
    required this.motif_etat,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'etat': etat,
      'phone': phone,
      'ca_mensuel': ca_mensuel,
      'devise_ca_mensuel': devise_ca_mensuel,
      'adresse': adresse,
      'timeStamp': timeStamp,
    };
  }
}
