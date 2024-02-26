import 'package:flutter/material.dart';
import 'package:hitbox_main/introscreens/introscreen1.dart';
import 'package:hitbox_main/introscreens/introscreen2.dart';
import 'package:hitbox_main/introscreens/introscreen3.dart';
import 'package:hitbox_main/navigator/MainBottomNavigator.dart';
import 'package:hitbox_main/screens/navscreens/homescreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // controller to keep  terack of the Site
  PageController _controller = PageController();

  //keep track of the last page you on
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Page View
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [IntroScreen1(), IntroScreen2(), IntroScreen3()],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text('skip', style: TextStyle(color: Colors.white))),

                // dot indicator
                SmoothPageIndicator(controller: _controller, count: 3),

                // next or done
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MainBottomNavigator();
                          }));
                        },
                        child:
                            Text('done', style: TextStyle(color: Colors.white)),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child:
                            Text('next', style: TextStyle(color: Colors.white)),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
