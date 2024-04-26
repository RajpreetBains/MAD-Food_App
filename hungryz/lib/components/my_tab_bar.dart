import 'package:flutter/material.dart';
import '../models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs(),
        labelPadding: const EdgeInsets.symmetric(horizontal: 8),
        labelColor: Theme.of(context).colorScheme.inversePrimary,
        unselectedLabelColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
