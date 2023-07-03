import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'on_bording_event.dart';
part 'on_bording_state.dart';

class OnBordingBloc extends Bloc<OnBordingEvent, OnBordingState> {
  OnBordingBloc() : super(OnBordingInitial()) {
    on<OnBordingEvent>((event, emit) {});
  }
}
