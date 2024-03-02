import 'package:flutter/material.dart';
import 'package:fluttertest/Screens/login.dart';
import 'package:fluttertest/Screens/regestration_one.dart';
import 'package:fluttertest/component/custom_button.dart';
import 'package:get/get.dart';

class WHoAreYou extends StatelessWidget {
  const WHoAreYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CurvedContainer(),
            MyImage(),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Are You ?',
          style: TextStyle(
              color: Color(0xff2c53b7),
              fontSize: 26,
              fontWeight: FontWeight.w500),
        ),
        CustomButton(
          text: 'Admin',
          onTap: () {
            Get.to(Regestration());
          },
        ),
        CustomButton(
          text: 'User',
        ),
      ],
    );
  }
}

class CurvedContainer extends StatelessWidget {
  const CurvedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 1.9,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(180),
              bottomRight: Radius.circular(180)),
          color: Color.fromARGB(255, 248, 246, 246),
        ));
  }
}

class MyImage extends StatelessWidget {
  const MyImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 90,
      right: 30,
      left: 30,
      child: Image.asset(
        'assets/images/Who.png',
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        fit: BoxFit.contain,
      ),
    );
  }
}
