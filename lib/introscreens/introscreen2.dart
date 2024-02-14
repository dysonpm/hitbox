import 'package:flutter/material.dart';

class IntroScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("img/welcome_two.png"))),
        ))
      ],
    ));
  }
}
