import 'package:flutter/material.dart';
import 'package:fluttertest/Screens/login.dart';

class WHoAreYou extends StatelessWidget {
  const WHoAreYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
                height: 500,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(180),
                      bottomRight: Radius.circular(180)),
                  color: Color.fromARGB(255, 248, 246, 246),
                )),
            Positioned(
              bottom: 90,
              right: 30,
              left: 30,
              child: Image.asset(
                'assets/images/Who.jpg',
                width: 500.0,
                height: 300,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        const Text(
          'Are You ?',
          style: TextStyle(
              color: Color(0xff2c53b7),
              fontSize: 26,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const login()));
          },
          child: Container(
            margin: EdgeInsets.all(25),
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Color(0xff2c53b7),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Admin',
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
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const WHoAreYou()));
          },
          child: Container(
            margin: EdgeInsets.all(25),
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Color(0xff2c53b7),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'User',
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
        )
      ],
    );
  }
}
