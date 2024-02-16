import 'package:flutter/material.dart';
import 'package:hitbox_main/navigator/MainBottomNavigator.dart';
import 'package:hitbox_main/screens/navscreens/homescreen.dart';
import 'package:hitbox_main/screens/navscreens/onboardingscreen.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
