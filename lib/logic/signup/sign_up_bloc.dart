import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:equatable/equatable.dart';
import 'package:gestock/constants/etat.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc()
      : super(const SignUpInitial(
            confirm: EtatField.none,
            etat: EtatField.none,
            mail: EtatField.none,
            password: EtatField.none)) {
    on<OnChangedMail>((event, emit) {
      if (event.mail.isNotEmpty && EmailValidator.validate(event.mail)) {
        emit((state as SignUpInitial).copywith(mail: EtatField.valid));
      } else {
        emit((state as SignUpInitial).copywith(mail: EtatField.invalid));
      }
      (((state as SignUpInitial).mail == EtatField.valid) &&
              ((state as SignUpInitial).password == EtatField.valid) &&
              ((state as SignUpInitial).confirm == EtatField.valid))
          ? emit((state as SignUpInitial).copywith(etat: EtatField.valid))
          : emit((state as SignUpInitial).copywith(etat: EtatField.invalid));
    });
    on<OnChangedPassword>((event, emit) {
      if (event.password.isNotEmpty && event.password.length >= 6) {
        emit((state as SignUpInitial).copywith(password: EtatField.valid));
      } else {
        emit((state as SignUpInitial).copywith(password: EtatField.invalid));
      }
      (((state as SignUpInitial).mail == EtatField.valid) &&
              ((state as SignUpInitial).password == EtatField.valid) &&
              ((state as SignUpInitial).confirm == EtatField.valid))
          ? emit((state as SignUpInitial).copywith(etat: EtatField.valid))
          : emit((state as SignUpInitial).copywith(etat: EtatField.invalid));
    });
    on<OnChangedConfirm>((event, emit) {
      if (event.confirm.isNotEmpty && event.confirm.length >= 6) {
        emit((state as SignUpInitial).copywith(confirm: EtatField.valid));
      } else {
        emit((state as SignUpInitial).copywith(confirm: EtatField.invalid));
      }
      (((state as SignUpInitial).mail == EtatField.valid) &&
              ((state as SignUpInitial).password == EtatField.valid) &&
              ((state as SignUpInitial).confirm == EtatField.valid))
          ? emit((state as SignUpInitial).copywith(etat: EtatField.valid))
          : emit((state as SignUpInitial).copywith(etat: EtatField.invalid));
    });
    on<OnSubmit>((event, emit) {
      if (event.password == event.confirm) {
        emit((state as SignUpInitial)
            .copywith(password: EtatField.valid, confirm: EtatField.valid));
      } else {
        emit((state as SignUpInitial)
            .copywith(password: EtatField.invalid, confirm: EtatField.invalid));
      }
      (((state as SignUpInitial).mail == EtatField.valid) &&
              ((state as SignUpInitial).password == EtatField.valid) &&
              ((state as SignUpInitial).confirm == EtatField.valid))
          ? emit((state as SignUpInitial).copywith(etat: EtatField.valid))
          : emit((state as SignUpInitial).copywith(etat: EtatField.invalid));
    });
  }
}
