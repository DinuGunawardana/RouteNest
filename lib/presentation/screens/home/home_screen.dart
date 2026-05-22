import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../state_management/providers/place_provider.dart';
import '../../widgets/place_card.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // Current selected tab index
  int _currentIndex = 0;

  // Pages for navigation
  final List<Widget> _screens = const [
    Center(child: Text("Home")),
    Center(child: Text("Trips")),
    Center(child: Text("Lists")),
    Center(child: Text("Routes")),
  ];

  @override
  void initState() {

    super.initState();

    // Fetch places after screen loads
    Future.microtask(() {

      Provider.of<PlaceProvider>(
        context,
        listen: false,
      ).fetchPlaces();
    });
  }

  @override
  Widget build(BuildContext context) {

    final provider = Provider.of<PlaceProvider>(context);

    return Scaffold(

      appBar: AppBar(
        title: const Text("Discover Places"),
      ),

      body: provider.isLoading

          ? const Center(child: CircularProgressIndicator())

          : ListView.builder(

        itemCount: provider.places.length,

        itemBuilder: (context, index) {

          return PlaceCard(
            place: provider.places[index],
          );
        },
      ),

      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _currentIndex,

        // Called when user taps tab
        onTap: (index) {

          setState(() {

            // Update selected tab
            _currentIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "Trips",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Lists",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.route),
            label: "Routes",
          ),
        ],
      ),
    );
  }
}