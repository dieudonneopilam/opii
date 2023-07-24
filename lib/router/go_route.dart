import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestock/logic/cupertino.tap.bar/cupertino_tab_bar_bloc.dart';
import 'package:gestock/logic/login/login_bloc.dart';
import 'package:gestock/logic/produits/add.produit/add_produit_bloc.dart';
import 'package:gestock/logic/signup/sign_up_bloc.dart';
import 'package:gestock/screens/mobile/auth/login.dart';
import 'package:gestock/screens/mobile/auth/signun.dart';
import 'package:gestock/screens/mobile/bottom.dart';
import 'package:gestock/screens/mobile/depenses/depense.dart';
import 'package:gestock/screens/mobile/pertes/perte.dart';
import 'package:gestock/screens/mobile/produits/add.produit.dart';
import 'package:gestock/screens/mobile/produits/produit.dart';
import 'package:gestock/screens/mobile/ventes/vente.dart';
import 'package:go_router/go_router.dart';

import '../screens/mobile/home/home.dart';
import '../screens/mobile/ventes/add.vente.dart';

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
            name: 'login',
            path: 'login',
            builder: (context, state) => BlocProvider(
              create: (context) => LoginBloc(),
              child: const Login(),
            ),
          ),
          GoRoute(
            name: 'signup',
            path: 'sign-up',
            builder: (context, state) => BlocProvider(
              create: (context) => SignUpBloc(),
              child: const SignUp(),
            ),
          ),
          GoRoute(
              name: 'ventes',
              path: 'ventes',
              builder: (context, state) => const VentePage(),
              routes: [
                GoRoute(
                  name: 'add_vente',
                  path: 'new',
                  builder: (context, state) => BlocProvider(
                    create: (context) => AddProduitBloc(),
                    child:  AddVente(),
                  ),
                )
              ]),
          GoRoute(
              name: 'produits',
              path: 'produits',
              builder: (context, state) => ProduitsPage(),
              routes: [
                GoRoute(
                  name: 'add_produit',
                  path: 'new',
                  builder: (context, state) => BlocProvider(
                    create: (context) => AddProduitBloc(),
                    child: const AddProduitPage(),
                  ),
                )
              ]),
          GoRoute(
              name: 'pertes',
              path: 'pertes',
              builder: (context, state) => const PertePage(),
              routes: [
                GoRoute(
                  name: 'add_perte',
                  path: 'new',
                  builder: (context, state) => BlocProvider(
                    create: (context) => AddProduitBloc(),
                    child: const AddProduitPage(),
                  ),
                )
              ]),
          GoRoute(
            name: 'depenses',
            path: 'depenses',
            builder: (context, state) => const DepensePage(),
            routes: [
              GoRoute(
                name: 'add_depense',
                path: 'new',
                builder: (context, state) => BlocProvider(
                  create: (context) => AddProduitBloc(),
                  child: const AddProduitPage(),
                ),
              )
            ],
          ),
          GoRoute(
            name: 'approvisionnements',
            path: 'approvisionnements',
            builder: (context, state) => const DepensePage(),
            routes: [
              GoRoute(
                name: 'add_approv',
                path: 'new',
                builder: (context, state) => BlocProvider(
                  create: (context) => AddProduitBloc(),
                  child: const AddProduitPage(),
                ),
              )
            ],
          ),
        ],
      )
    ],
    errorBuilder: (context, state) {
      return const HomeMobile(title: 'title');
    },
  );
}
