// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'cupertino_tab_bar_event.dart';
part 'cupertino_tab_bar_state.dart';

class CupertinoTabBarBloc
    extends Bloc<CupertinoTabBarEvent, CupertinoTabBarState> {
  CupertinoTabBarBloc() : super(const CupertinoTabBarInitial(currentIndex: 0)) {
    on<OnChangeEvent>((event, emit) {
      emit(CupertinoTabBarInitial(currentIndex: event.currentIndex));
    });
  }
}
