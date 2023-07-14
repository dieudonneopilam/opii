// ignore_for_file: depend_on_referenced_packages
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import '../../constants/etat.dart';
part 'internet_connexion_event.dart';
part 'internet_connexion_state.dart';

class InternetConnexionBloc
    extends Bloc<InternetConnexionEvent, InternetConnexionState> {
  final Connectivity connectivity;
  StreamSubscription streamSubscription;
  InternetConnexionBloc(this.streamSubscription, {required this.connectivity})
      : super(
            const InternetConnexionInitial(etatConnexion: EtatConnexion.none)) {
    on<InternetConnexionEvent>((event, emit) {
      streamSubscription = connectivity.onConnectivityChanged
          .listen((ConnectivityResult connectivityResult) {
        if (connectivityResult == ConnectivityResult.none) {
          emit(const InternetConnexionInitial(
              etatConnexion: EtatConnexion.open));
        } else {
          emit(const InternetConnexionInitial(
              etatConnexion: EtatConnexion.close));
        }
      });
    });
  }
  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }
}
