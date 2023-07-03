import 'package:go_router/go_router.dart';

import '../screens/mobile/home/home.dart';

class GoRoutes {
  static final GoRouter router = GoRouter(
    errorBuilder: (context, state) => const HomeMobile(title: 'error'),
    routes: [
      GoRoute(
          path: '/',
          builder: (context, state) => const HomeMobile(title: 'title'),
          routes: [
            GoRoute(
                name: 'settings',
                path: 'settings/:title',
                builder: (context, state) {
                  state.queryParameters.forEach((key, value) {
                    print("$key:$value");
                  });
                  return HomeMobile(
                      title: state.pathParameters['title'].toString());
                },
                redirect: (context, state) {
                  if (1 + 1 == 0) {
                    return "/login";
                  }
                  return "/";
                },
                routes: [GoRoute(path: '/para')]),
          ]),
      GoRoute(
          path: '/home',
          builder: (context, state) => const HomeMobile(title: 'title')),
    ],
  );
}
