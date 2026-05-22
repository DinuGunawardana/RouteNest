import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/widgets/loaders/app_loader.dart';
import '../../../core/widgets/states/error_state.dart';

import '../../../state_management/providers/place_provider.dart';

import '../../widgets/place_card.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() =>
      _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {

      if (mounted) {

        context.read<PlaceProvider>().fetchPlaces();
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    final provider =
    context.watch<PlaceProvider>();

    // ===== LOADING =====

    if (provider.isLoading) {

      return const AppLoader();
    }

    // ===== ERROR =====

    if (provider.errorMessage != null) {

      return ErrorState(

        message: provider.errorMessage!,

        onRetry: () {

          provider.fetchPlaces();
        },
      );
    }

    // ===== SUCCESS =====

    return ListView.builder(

      itemCount: provider.places.length,

      itemBuilder: (context, index) {

        return PlaceCard(

          place: provider.places[index],
        );
      },
    );
  }
}