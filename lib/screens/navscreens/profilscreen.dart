import 'package:flutter/material.dart';

// Ein Widget, dass später in der BottomNavigation benutzt wird
class ProfilScreenWidget extends StatelessWidget {
  const ProfilScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Center(child: Text("profil")),
      backgroundColor: Colors.white,
    );
  }
}
