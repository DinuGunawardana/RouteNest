import 'package:flutter_test/flutter_test.dart';

import 'package:routenest/state_management/providers/place_provider.dart';

void main() {

  test(

    "Initial provider state is correct",

        () {

      final provider = PlaceProvider();

      expect(provider.places.isEmpty, true);

      expect(provider.isLoading, false);

      expect(provider.errorMessage, null);
    },
  );
}