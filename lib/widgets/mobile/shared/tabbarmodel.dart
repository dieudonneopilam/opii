import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../tabbartab.dart';

class TabBarModel extends StatelessWidget {
  const TabBarModel({
    super.key,
    required this.controller,
  });

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: bgcolorgrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TabBar(
        controller: controller,
        isScrollable: false,
        indicatorPadding: const EdgeInsets.all(0),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        labelPadding: const EdgeInsets.all(0),
        indicatorSize: TabBarIndicatorSize.tab,
        automaticIndicatorColorAdjustment: false,
        indicatorColor: bgcolorgrey,
        dividerColor: bgcolorgrey,
        labelColor: colorlack,
        unselectedLabelColor: colorlack,
        indicator: BoxDecoration(
            color: bgcolorwhite, borderRadius: BorderRadius.circular(10)),
        tabs: const [
          TabBarTab(title: 'Day'),
          TabBarTab(title: 'Month'),
          TabBarTab(title: 'Year')
        ],
      ),
    );
  }
}
