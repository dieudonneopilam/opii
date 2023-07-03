import 'package:flutter/material.dart';
import 'package:gestock/router/go_route.dart';
import 'package:go_router/go_router.dart';

import 'screens/mobile/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: GoRoutes.router,
    );
  }
}

final GoRouter _router = GoRouter(
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
