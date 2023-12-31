// ignore_for_file: non_constant_identifier_names

class UserModel {
  final Map<String, dynamic> ese;
  final String uid;
  final String name;
  final String email;
  final String phone;
  final String type;
  final String role;
  final String password;
  final Map<String, dynamic> user_who_add;
  final bool deleted;
  final DateTime date_deleted;
  final DateTime date_created;
  final String motif_deleted;
  final DateTime timeStamp = DateTime.timestamp();
  UserModel({
    required this.ese,
    required this.uid,
    required this.date_created,
    required this.role,
    required this.phone,
    required this.type,
    required this.user_who_add,
    required this.password,
    this.deleted = false,
    required this.date_deleted,
    required this.motif_deleted,
    required this.email,
    required this.name,
  });
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'ese': ese,
      'name': name,
      'password': password,
      'email': email,
      'phone': phone,
      'type': type,
      'user_who_add': user_who_add,
      'role': role,
      'date_deleted': date_deleted,
      'motif_deleted': motif_deleted,
      'timeStamp': timeStamp,
    };
  }
}
