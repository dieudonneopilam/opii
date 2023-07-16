part of 'sign_up_bloc.dart';

abstract class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class OnChangedMail extends SignUpEvent {
  final String mail;
  const OnChangedMail({required this.mail});
  @override
  List<Object> get props => [mail];
}

class OnChangedPassword extends SignUpEvent {
  final String password;
  const OnChangedPassword({required this.password});
  @override
  List<Object> get props => [password];
}

class OnChangedConfirm extends SignUpEvent {
  final String confirm;
  const OnChangedConfirm({required this.confirm});
  @override
  List<Object> get props => [confirm];
}

class OnSubmit extends SignUpEvent {
  final String confirm;
  final String password;
  final String mail;
  final BuildContext context;
  const OnSubmit(
      {required this.password,
      required this.confirm,
      required this.mail,
      required this.context});
  @override
  List<Object> get props => [confirm, password, mail];
}
