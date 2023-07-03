import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'validation_champ_event.dart';
part 'validation_champ_state.dart';

class ValidationChampBloc extends Bloc<ValidationChampEvent, ValidationChampState> {
  ValidationChampBloc() : super(ValidationChampInitial()) {
    on<ValidationChampEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
