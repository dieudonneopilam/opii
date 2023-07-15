part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {
  final EtatField mail;
  final EtatField password;
  final EtatField etat;
  const LoginInitial({
    required this.mail,
    required this.password,
    required this.etat,
  });

  LoginInitial copywith(
      {EtatField? mail, EtatField? password, EtatField? etat}) {
    return LoginInitial(
      mail: mail ?? this.mail,
      password: password ?? this.password,
      etat: etat ?? this.etat,
    );
  }

  @override
  List<Object> get props => [mail, password, etat];
}
