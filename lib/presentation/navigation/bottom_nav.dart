import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class BottomNav extends StatelessWidget {

  final int currentIndex;

  final Function(int) onTap;

  const BottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return NavigationBar(

      selectedIndex: currentIndex,

      onDestinationSelected: onTap,

      backgroundColor: Colors.white,

      indicatorColor: AppColors.secondary,

      destinations: const [

        NavigationDestination(
          icon: Icon(Icons.explore_outlined),
          selectedIcon: Icon(Icons.explore),
          label: "Discover",
        ),

        NavigationDestination(
          icon: Icon(Icons.map_outlined),
          selectedIcon: Icon(Icons.map),
          label: "Trips",
        ),

        NavigationDestination(
          icon: Icon(Icons.bookmark_outline),
          selectedIcon: Icon(Icons.bookmark),
          label: "Lists",
        ),

        NavigationDestination(
          icon: Icon(Icons.route_outlined),
          selectedIcon: Icon(Icons.route),
          label: "Routes",
        ),

        NavigationDestination(
          icon: Icon(Icons.person_outline),
          selectedIcon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
    );
  }
}