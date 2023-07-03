import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'internet_connexion_event.dart';
part 'internet_connexion_state.dart';

class InternetConnexionBloc extends Bloc<InternetConnexionEvent, InternetConnexionState> {
  InternetConnexionBloc() : super(InternetConnexionInitial()) {
    on<InternetConnexionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
