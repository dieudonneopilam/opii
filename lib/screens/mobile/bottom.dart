import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestock/constants/liste_pages.dart';
import 'package:gestock/logic/cupertino.tap.bar/cupertino_tab_bar_bloc.dart';
import 'package:heroicons/heroicons.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CupertinoTabBarBloc, CupertinoTabBarState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            title: const Text('Tesla Companie'),
            actions: const [
              Icon(BootstrapIcons.bell),
              SizedBox(width: 20),
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/img/bg.jpeg'),
              ),
              SizedBox(width: 20)
            ],
          ),
          backgroundColor: Colors.black,
          body: pagesClient[(state as CupertinoTabBarInitial).currentIndex],
          bottomNavigationBar: CupertinoTabBar(
            activeColor: Colors.black,
            backgroundColor: Colors.white,
            height: 60,
            currentIndex: (state).currentIndex,
            onTap: (value) => context
                .read<CupertinoTabBarBloc>()
                .add(OnChangeEvent(currentIndex: value)),
            items: const [
              BottomNavigationBarItem(
                  icon: HeroIcon(HeroIcons.home), label: 'home'),
              BottomNavigationBarItem(
                  icon: HeroIcon(HeroIcons.wrenchScrewdriver),
                  label: 'abonnment'),
              BottomNavigationBarItem(
                  icon: HeroIcon(HeroIcons.userGroup), label: 'users'),
              BottomNavigationBarItem(
                  icon: HeroIcon(HeroIcons.handRaised), label: 'questions'),
              BottomNavigationBarItem(
                  icon: HeroIcon(HeroIcons.user), label: 'profil'),
            ],
          ),
        );
      },
    );
  }
}
