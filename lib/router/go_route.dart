import 'package:go_router/go_router.dart';

import '../screens/mobile/home/home.dart';

class GoRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => const HomeMobile(title: 'title'),
        redirect: (context, state) {
          if (11 + 1 == 14) {
            return '/login';
          }
          return '/';
        },
        routes: [
          GoRoute(
            name: 'profile',
            path: 'profil/:id',
            builder: (context, state) =>
                HomeMobile(title: state.pathParameters['id'].toString()),
          ),
        ],
      )
    ],
    errorBuilder: (context, state) {
      return const HomeMobile(title: 'title');
    },
  );
}
