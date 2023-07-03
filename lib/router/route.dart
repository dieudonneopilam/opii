// ignore_for_file: constant_pattern_never_matches_value_type

import 'package:flutter/material.dart';
import 'package:gestock/screens/mobile/home/home.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => const HomeMobile(
            title: '',
          ),
        );
      case "/home":
        Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => HomeMobile(
            title: arguments['title'],
          ),
        );
      default:
        return null;
    }
  }
}
