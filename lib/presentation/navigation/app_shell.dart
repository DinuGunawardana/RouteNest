import 'package:flutter/material.dart';

import '../screens/home/home_screen.dart';
import '../screens/trips/trips_screen.dart';
import '../screens/lists/lists_screen.dart';
import '../screens/routes/routes_screen.dart';
import '../screens/profile/profile_screen.dart';

import 'bottom_nav.dart';

class AppShell extends StatefulWidget {

  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {

  // Current selected tab
  int _currentIndex = 0;

  // App screens
  final List<Widget> _screens = const [

    HomeScreen(),

    TripsScreen(),

    ListsScreen(),

    RoutesScreen(),

    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // Prevent rebuilding screens
      body: IndexedStack(

        index: _currentIndex,

        children: _screens,
      ),

      // Bottom navigation
      bottomNavigationBar: BottomNav(

        currentIndex: _currentIndex,

        onTap: (index) {

          setState(() {

            _currentIndex = index;
          });
        },
      ),
    );
  }
}