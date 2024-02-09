import 'package:flutter/material.dart';

// Ein Widget, dass später in der BottomNavigation benutzt wird
class AnalysisScreenWidget extends StatelessWidget {
  const AnalysisScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Center(child: Text("analysis")),
      backgroundColor: Colors.white,
    );
  }
}
