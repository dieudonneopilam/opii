// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'validation_champ_event.dart';
part 'validation_champ_state.dart';

class ValidationChampBloc
    extends Bloc<ValidationChampEvent, ValidationChampState> {
  ValidationChampBloc()
      : super(const ValidationChampInitial(valueField: EtatField.none)) {
    on<OnChangedValue>((event, emit) {
      if (event.valueField.isEmpty) {
        emit(const ValidationChampInitial(valueField: EtatField.invalid));
      }
      emit(const ValidationChampInitial(valueField: EtatField.valid));
    });
  }
}
