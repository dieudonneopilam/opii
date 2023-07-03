part of 'cupertino_tab_bar_bloc.dart';

abstract class CupertinoTabBarEvent extends Equatable {
  const CupertinoTabBarEvent();

  @override
  List<Object> get props => [];
}

class OnChangeEvent extends CupertinoTabBarEvent {
  final int currentIndex;
  const OnChangeEvent({required this.currentIndex});
}
