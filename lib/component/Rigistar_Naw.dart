// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fluttertest/Screens/login.dart';
import 'package:get/get.dart';

class Rigester extends StatelessWidget {
  const Rigester({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const login(),
            transition: Transition.downToUp,
            duration: const Duration(milliseconds: 200));
      },
      child: Container(
        margin: const EdgeInsets.all(25),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xff2c53b7),
          border: Border.all(
            width: 1,
            color: const Color(0xff2c53b7),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              'Rigster Now            ',
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_circle_right_sharp,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
