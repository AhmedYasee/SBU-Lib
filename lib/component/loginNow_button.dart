import 'package:flutter/material.dart';
import 'package:fluttertest/Screens/collegeslist.dart';

import 'package:get/get.dart';

class LoginNowButton extends StatelessWidget {
  const LoginNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const CollegesList(),
            transition: Transition.downToUp,
            duration: const Duration(milliseconds: 200));
      },
      child: Container(
        margin: const EdgeInsets.all(25),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
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
              'Login Now                     ',
              style: TextStyle(
                  fontSize: 28,
                  color: Color(0xff2c53b7),
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Color(0xff2c53b7),
            ),
          ],
        ),
      ),
    );
  }
}
