import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:equatable/equatable.dart';

import '../../constants/etat.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc()
      : super(const LoginInitial(
            etat: EtatField.none,
            mail: EtatField.none,
            password: EtatField.none)) {
    on<OnChangedMail>((event, emit) {
      if (event.mail.isNotEmpty && EmailValidator.validate(event.mail)) {
        emit((state as LoginInitial).copywith(mail: EtatField.valid));
      } else {
        emit((state as LoginInitial).copywith(mail: EtatField.invalid));
      }
      (((state as LoginInitial).mail == EtatField.valid) &&
              ((state as LoginInitial).password == EtatField.valid))
          ? emit((state as LoginInitial).copywith(etat: EtatField.valid))
          : emit((state as LoginInitial).copywith(etat: EtatField.invalid));
    });
    on<OnChangedPassword>((event, emit) {
      if (event.password.isNotEmpty && event.password.length >= 6) {
        emit((state as LoginInitial).copywith(password: EtatField.valid));
      } else {
        emit((state as LoginInitial).copywith(password: EtatField.invalid));
      }
      (((state as LoginInitial).mail == EtatField.valid) &&
              ((state as LoginInitial).password == EtatField.valid))
          ? emit((state as LoginInitial).copywith(etat: EtatField.valid))
          : emit((state as LoginInitial).copywith(etat: EtatField.invalid));
    });
  }
}
