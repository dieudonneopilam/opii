// ignore_for_file: non_constant_identifier_names

part of 'add_produit_bloc.dart';

abstract class AddProduitEvent extends Equatable {
  const AddProduitEvent();

  @override
  List<Object> get props => [];
}

class OnChangedDesignation extends AddProduitEvent {
  final String designation;
  const OnChangedDesignation({required this.designation});
  @override
  List<Object> get props => [designation];
}

class OnChangedExpression extends AddProduitEvent {
  final String expression;
  const OnChangedExpression({required this.expression});
  @override
  List<Object> get props => [expression];
}

class OnChangedPrix extends AddProduitEvent {
  final String prix;
  const OnChangedPrix({required this.prix});
  @override
  List<Object> get props => [prix];
}

class OnChangedDevise extends AddProduitEvent {
  final String devise;
  const OnChangedDevise({required this.devise});
  @override
  List<Object> get props => [devise];
}

class OnChangedStockInit extends AddProduitEvent {
  final String stock_init;
  const OnChangedStockInit({required this.stock_init});
  @override
  List<Object> get props => [stock_init];
}

class OnChangedStockAlerte extends AddProduitEvent {
  final String stock_alerte;
  const OnChangedStockAlerte({required this.stock_alerte});
  @override
  List<Object> get props => [stock_alerte];
}

class OnChangedStockMax extends AddProduitEvent {
  final String stock_max;
  const OnChangedStockMax({required this.stock_max});
  @override
  List<Object> get props => [stock_max];
}

class OnChangedStockMin extends AddProduitEvent {
  final String stock_min;
  const OnChangedStockMin({required this.stock_min});
  @override
  List<Object> get props => [stock_min];
}

class OnChangedImage extends AddProduitEvent {
  final Uint8List img;
  const OnChangedImage({required this.img});
  @override
  List<Object> get props => [img];
}

class OnSubmitFormEvent extends AddProduitEvent {
  final BuildContext context;
  final String designation;
  final String expression;
  final String prix_vente;
  final String stock_initial;
  final String stock_alerte;
  final String stock_min;
  final String stock_max;
  final Uint8List file;
  final String devise;
  const OnSubmitFormEvent({
    required this.designation,
    required this.expression,
    required this.prix_vente,
    required this.stock_initial,
    required this.stock_alerte,
    required this.stock_min,
    required this.stock_max,
    required this.devise,
    required this.file,
    required this.context,
  });
  List<Object> get props => [
        file,
        designation,
        expression,
        prix_vente,
        stock_alerte,
        stock_initial,
        stock_min,
        stock_max,
        devise,
        context
      ];
}
