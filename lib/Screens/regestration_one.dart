import 'package:flutter/material.dart';
import 'package:fluttertest/component/login_button.dart';
import 'package:fluttertest/component/my_textfield.dart';
import 'package:image_field/image_field.dart';

class Regestration extends StatelessWidget {
  const Regestration({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Icon(
          //   Icons.arrow_circle_left_rounded,
          //   color: Color(0xff2c53b7),
          //   size: 50,
          // ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'Registration',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Positioned(
            bottom: 150,
            right: 30,
            left: 30,
            child: Image.asset(
              'assets/images/Lib.jpg',
              width: 500.0,
              height: 300,
              fit: BoxFit.contain,
            ),
          ),
          const MyTextField(
            icon: Icons.upload_file,
            obsecure: false,
            text: 'Upload your photo',
          ),
          const ImageField(),
          const MyTextField(
            icon: Icons.person,
            obsecure: false,
            text: 'First Name',
          ),
          const SizedBox(height: 20),
          const MyTextField(
            icon: Icons.person,
            obsecure: false,
            text: 'Last Name',
          ),
          const SizedBox(height: 20),
          const MyTextField(
            icon: Icons.email,
            obsecure: false,
            text: 'Email',
          ),
          const SizedBox(height: 20),
          const MyTextField(
            icon: Icons.lock,
            obsecure: true,
            text: 'password',
            sufficon: Icons.remove_red_eye_rounded,
          ),
          const SizedBox(height: 20),
          const MyTextField(
            sufficon: Icons.remove_red_eye_rounded,
            icon: Icons.lock,
            obsecure: true,
            text: 'Confirm password',
          ),
          const SizedBox(height: 20),
          const MyTextField(
            icon: Icons.phone,
            obsecure: true,
            text: 'Phone Number',
          ),
          const LoginButton(),
        ],
      ),
    );
  }
}
