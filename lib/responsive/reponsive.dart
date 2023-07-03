import 'package:flutter/material.dart';
import 'package:gestock/constants/dimension.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobile,
      required this.tablette,
      required this.web});

  final Widget mobile;
  final Widget tablette;
  final Widget web;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (MediaQuery.sizeOf(context).width <= mobiletaille) {
          return mobile;
        }
        if (MediaQuery.sizeOf(context).width <= tablettetaille) {
          return tablette;
        }
        return web;
      },
    );
  }
}
