import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestock/screens/mobile/depenses/depense.dart';
import 'package:gestock/screens/mobile/pertes/perte.dart';
import 'package:gestock/screens/mobile/produits/produit.dart';
import 'package:gestock/screens/mobile/ventes/vente.dart';
import 'package:go_router/go_router.dart';
import '../logic/cupertino.tap.bar/cupertino_tab_bar_bloc.dart';
import '../screens/mobile/bottom.dart';
import '../screens/mobile/home/home.dart';

class GoRoutes {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => BlocProvider(
          create: (context) => CupertinoTabBarBloc(),
          child: const BottomNavigationBarPage(),
        ),
        routes: [
          GoRoute(
            name: 'ventes',
            path: 'ventes',
            builder: (context, state) => const VentePage(),
          ),
          GoRoute(
            name: 'produits',
            path: 'produits',
            builder: (context, state) => const ProduitsPage(),
          ),
          GoRoute(
            name: 'pertes',
            path: 'pertes',
            builder: (context, state) => const PertePage(),
          ),
          GoRoute(
            name: 'depenses',
            path: 'depenses',
            builder: (context, state) => const DepensePage(),
          ),
        ],
      )
    ],
    errorBuilder: (context, state) {
      return const HomeMobile(title: 'title');
    },
  );
}
