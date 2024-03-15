import 'package:flutter/material.dart';
import 'package:fluttertest/Screens/who_are_you.dart';
import 'package:fluttertest/component/loginNow_button.dart';
import 'package:fluttertest/component/my_textfield.dart';

// ignore: camel_case_types
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Stack(
              children: [
                CurvedContainer(),
                MyImage(
                  photo: 'assets/images/Animation - LoginGirl.json',
                ),
              ],
            ),
            const SizedBox(height: 20),
            const MyTextField(
              icon: Icons.email,
              obscure: false,
              text: 'Email',
            ),
            const SizedBox(height: 20),
            const MyTextField(
              icon: Icons.lock,
              obscure: true,
              text: 'password',
              suffixIcon: Icons.remove_red_eye_rounded,
            ),
            const SizedBox(height: 20),
            const LoginNowButton(),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Forget Password?",
                style: TextStyle(fontSize: 20, color: Color(0xff2c53b7)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
