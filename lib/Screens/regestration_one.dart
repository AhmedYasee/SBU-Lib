import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:fluttertest/component/login_button.dart';
import 'package:fluttertest/component/my_textfield.dart';
import 'package:fluttertest/component/utils.dart';
import 'package:image_picker/image_picker.dart';

class Regestration extends StatefulWidget {
  const Regestration({super.key});

  @override
  State<Regestration> createState() => _RegestrationState();
}

class _RegestrationState extends State<Regestration> {
  Uint8List? _image;

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

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

          Stack(
            children: [
              _image != null
                  ? CircleAvatar(
                      radius: 50, backgroundImage: MemoryImage(_image!))
                  : const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://icon-library.com/images/default-user-icon/default-user-icon-23.jpg'),
                    ),
              Positioned(
                  bottom: -10,
                  left: 65,
                  child: IconButton(
                      onPressed: () => selectImage(),
                      icon: const Icon(
                        Icons.add_a_photo,
                        color: Color(0xff2c53b7),
                      ))),
            ],
          ),
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
