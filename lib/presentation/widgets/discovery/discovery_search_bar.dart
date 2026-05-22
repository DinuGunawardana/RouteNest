import 'package:flutter/material.dart';

class DiscoverySearchBar
    extends StatelessWidget {

  const DiscoverySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return TextField(

      decoration: InputDecoration(

        hintText: "Search places...",

        prefixIcon:
        const Icon(Icons.search),

        filled: true,

        fillColor: Colors.white,

        border: OutlineInputBorder(

          borderRadius:
          BorderRadius.circular(16),

          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}