import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'current_user_event.dart';
part 'current_user_state.dart';

class CurrentUserBloc extends Bloc<CurrentUserEvent, CurrentUserState> {
  CurrentUserBloc() : super(CurrentUserInitial()) {
    on<CurrentUserEvent>((event, emit) {});
  }
}
