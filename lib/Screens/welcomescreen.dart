import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class welcomescreen extends StatelessWidget {
  const welcomescreen({super.key});

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
                  color: Color.fromARGB(255, 248, 245, 245),
                )),
            Positioned(
              bottom: 50,
              right: 30,
              left: 30,
              child: Image.asset(
                'assets/images/aaa.png',
                width: 500.0,
                height: 300,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Welcome To',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          'assets/images/Book.jpg',
          fit: BoxFit.fill,
          width: 350,
          height: 100,
        ),
        const SizedBox(
          height: 50,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const welcomescreen()));
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
                  'Let\'s Go',
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
