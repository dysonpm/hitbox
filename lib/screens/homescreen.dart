import 'package:flutter/material.dart';

// Ein Widget, dass später in der BottomNavigation benutzt wird
class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Text("Hi"),
    );
  }
}
