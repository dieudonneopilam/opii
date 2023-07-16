part of 'current_user_bloc.dart';

abstract class CurrentUserState extends Equatable {
  const CurrentUserState();
  
  @override
  List<Object> get props => [];
}

class CurrentUserInitial extends CurrentUserState {}
