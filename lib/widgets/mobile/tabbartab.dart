import 'package:flutter/material.dart';

import 'shared/text_moy.dart';

class TabBarTab extends StatelessWidget {
  const TabBarTab({
    super.key,
    required this.title,
    this.height = 40,
    this.size = 16,
  });
  final String title;
  final double height;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextMoy(text: title, size: size),
    );
  }
}
