import 'package:flutter/material.dart';
import '../text_small.dart';

class BoxContentService extends StatelessWidget {
  const BoxContentService({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        width: 170,
        decoration: BoxDecoration(
            color: const Color(0xFFEEEEEE),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(icon), TextSmal(text: title, size: 20)],
        ),
      ),
    );
  }
}
