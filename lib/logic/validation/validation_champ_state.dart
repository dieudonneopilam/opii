part of 'validation_champ_bloc.dart';

abstract class ValidationChampState extends Equatable {
  const ValidationChampState();

  @override
  List<Object> get props => [];
}

enum EtatField { valid, invalid, none }

class ValidationChampInitial extends ValidationChampState {
  final EtatField valueField;
  const ValidationChampInitial({required this.valueField});
  @override
  List<Object> get props => [valueField];
}
