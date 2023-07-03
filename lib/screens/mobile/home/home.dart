import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go('/home');
            context.goNamed('name',
                pathParameters: {'name': 'name'},
                queryParameters: {'nom': 'malipo', 'age': 20});
          },
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
