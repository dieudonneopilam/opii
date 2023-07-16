part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class OnChangedMail extends LoginEvent {
  final String mail;
  const OnChangedMail({required this.mail});
  @override
  List<Object> get props => [mail];
}

class OnChangedPassword extends LoginEvent {
  final String password;
  const OnChangedPassword({required this.password});
  @override
  List<Object> get props => [password];
}

class OnSubmit extends LoginEvent {
  final String mail;
  final String password;
  final BuildContext context;
  const OnSubmit(
      {required this.password, required this.mail, required this.context});
  @override
  List<Object> get props => [mail, password, context];
}
