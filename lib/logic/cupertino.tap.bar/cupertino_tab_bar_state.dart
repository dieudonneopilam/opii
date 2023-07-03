part of 'cupertino_tab_bar_bloc.dart';

abstract class CupertinoTabBarState extends Equatable {
  const CupertinoTabBarState();

  @override
  List<Object> get props => [];
}

class CupertinoTabBarInitial extends CupertinoTabBarState {
  final int currentIndex;
  const CupertinoTabBarInitial({required this.currentIndex});
  @override
  List<Object> get props => [currentIndex];
}
