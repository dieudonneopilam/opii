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
  final EtatRequest etatRequest;
  const LoginInitial({
    required this.mail,
    required this.password,
    required this.etat,
    required this.etatRequest,
  });

  LoginInitial copywith(
      {EtatField? mail,
      EtatField? password,
      EtatField? etat,
      EtatRequest? etatRequest}) {
    return LoginInitial(
      mail: mail ?? this.mail,
      password: password ?? this.password,
      etat: etat ?? this.etat,
      etatRequest: etatRequest ?? this.etatRequest,
    );
  }

  @override
  List<Object> get props => [mail, password, etat, etatRequest];
}
