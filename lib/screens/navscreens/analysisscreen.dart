import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hitbox_main/main.dart';

// Ein Widget, das später in der BottomNavigation benutzt wird
class AnalysisScreenWidget extends StatefulWidget {
  const AnalysisScreenWidget({super.key});

  @override
  _AnalysisScreenWidgetState createState() => _AnalysisScreenWidgetState();
}

class _AnalysisScreenWidgetState extends State<AnalysisScreenWidget> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        backgroundColor: Colors.red,
      ),
    );
  }
}
