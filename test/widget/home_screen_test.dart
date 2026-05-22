import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:provider/provider.dart';

import 'package:routenest/presentation/screens/home/home_screen.dart';

import 'package:routenest/state_management/providers/place_provider.dart';

import '../test_helper.dart';

void main() {

  setupTestDatabase();

  testWidgets(

    "HomeScreen renders correctly",

        (WidgetTester tester) async {

      await tester.pumpWidget(

        MultiProvider(

          providers: [

            ChangeNotifierProvider(
              create: (_) => PlaceProvider(),
            ),
          ],

          child: const MaterialApp(

            home: HomeScreen(),
          ),
        ),
      );

      // Allow frame callbacks
      await tester.pump();

      // Verify HomeScreen exists
      expect(
        find.byType(HomeScreen),
        findsOneWidget,
      );
    },
  );
}