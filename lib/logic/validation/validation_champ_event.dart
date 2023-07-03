part of 'validation_champ_bloc.dart';

abstract class ValidationChampEvent extends Equatable {
  const ValidationChampEvent();
  @override
  List<Object> get props => [];
}

class OnChangedValue extends ValidationChampEvent {
  final String valueField;
  const OnChangedValue({required this.valueField});
}
