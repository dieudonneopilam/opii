part of 'sign_up_bloc.dart';

abstract class SignUpState extends Equatable {
  const SignUpState();

  @override
  List<Object> get props => [];
}

class SignUpInitial extends SignUpState {
  final EtatField mail;
  final EtatField password;
  final EtatField confirm;
  final EtatField etat;
  final EtatRequest etatRequest;
  const SignUpInitial(
      {required this.mail,
      required this.password,
      required this.confirm,
      required this.etat,
      required this.etatRequest});

  SignUpInitial copywith(
      {EtatField? mail,
      EtatField? password,
      EtatField? confirm,
      EtatField? etat,
      EtatRequest? etatRequest}) {
    return SignUpInitial(
      mail: mail ?? this.mail,
      password: password ?? this.password,
      confirm: confirm ?? this.confirm,
      etat: etat ?? this.etat,
      etatRequest: etatRequest ?? this.etatRequest,
    );
  }

  @override
  List<Object> get props => [mail, password, confirm, etat, etatRequest];
}
