import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertest/Screens/regestration_one.dart';
import 'package:fluttertest/Screens/welcomescreen.dart';
import 'package:fluttertest/Screens/who_are_you.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

PageController controller = new PageController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        home: SafeArea(
          child: Scaffold(
            body: Stack(
              children: [
                PageView(controller: controller, children: [
                  welcomescreen(),
                  Regestration(),
                  WHoAreYou(),
                ]),
                Container(
                    alignment: Alignment(0, .95),
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                        activeDotColor: Color(0xff2c53b7),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
