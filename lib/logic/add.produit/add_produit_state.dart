// ignore_for_file: non_constant_identifier_names

part of 'add_produit_bloc.dart';

abstract class AddProduitState extends Equatable {
  const AddProduitState();

  @override
  List<Object> get props => [];
}

class AddProduitInitial extends AddProduitState {
  final EtatField designation;
  final EtatField prix;
  final EtatField expression;
  final EtatField devise;
  final EtatField etat;
  final EtatField stock_min;
  final EtatField stock_initial;
  final EtatField stock_alerte;
  final EtatField stock_max;
  final EtatField image;
  const AddProduitInitial(
      {required this.designation,
      required this.prix,
      required this.devise,
      required this.expression,
      required this.etat,
      required this.image,
      required this.stock_alerte,
      required this.stock_initial,
      required this.stock_max,
      required this.stock_min});

  AddProduitInitial copyWith(
      {EtatField? designation,
      EtatField? prix,
      EtatField? expression,
      EtatField? devise,
      EtatField? etat,
      EtatRequest? etat_request,
      EtatField? image,
      EtatField? stock_alerte,
      EtatField? stock_initial,
      EtatField? stock_max,
      EtatField? stock_min}) {
    return AddProduitInitial(
      designation: designation ?? this.designation,
      devise: devise ?? this.devise,
      prix: prix ?? this.prix,
      expression: expression ?? this.expression,
      etat: etat ?? this.etat,
      image: image ?? this.image,
      stock_alerte: stock_alerte ?? this.stock_alerte,
      stock_initial: stock_initial ?? this.stock_initial,
      stock_max: stock_max ?? this.stock_max,
      stock_min: stock_min ?? this.stock_min,
    );
  }

  @override
  List<Object> get props => [
        designation,
        prix,
        etat,
        expression,
        devise,
        stock_alerte,
        stock_initial,
        stock_max,
        stock_min,
        image
      ];
}
