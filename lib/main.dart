import 'package:flutter/material.dart';
import 'package:fluttertest/Screens/regestration_one.dart';
import 'package:fluttertest/Screens/welcomescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body: PageView(
              children: const [
                welcomescreen(),
                Regestration(),
              ],
            ),
          ),
        ));
  }
}
