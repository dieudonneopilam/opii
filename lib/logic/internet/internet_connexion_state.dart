part of 'internet_connexion_bloc.dart';

abstract class InternetConnexionState extends Equatable {
  const InternetConnexionState();

  @override
  List<Object> get props => [];
}

class InternetConnexionInitial extends InternetConnexionState {
  final EtatConnexion etatConnexion;
  const InternetConnexionInitial({required this.etatConnexion});
  @override
  List<Object> get props => [etatConnexion];
}
