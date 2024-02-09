import 'package:flutter/material.dart';

// Ein Widget, dass später in der BottomNavigation benutzt wird
class ExploreScreenWidget extends StatelessWidget {
  const ExploreScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Center(child: Text("explore")),
      backgroundColor: Colors.white,
    );
  }
}
