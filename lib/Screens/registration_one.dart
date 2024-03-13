import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:fluttertest/component/MyDropdownList.dart';
import 'package:fluttertest/component/Rigistar_Naw.dart';
import 'package:fluttertest/component/login_button.dart';
import 'package:fluttertest/component/my_textfield.dart';
import 'package:fluttertest/component/utils.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  Uint8List? _image;

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Lottie.asset(
              'assets/images/Animation - 1710302184526 (1).json',
            ),

            Stack(
              children: [
                _image != null
                    ? CircleAvatar(
                        radius: 50, backgroundImage: MemoryImage(_image!))
                    : const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                            'assets/images/default-user-icon-23.jpg'),
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
            const SizedBox(height: 7),
            const MyTextField(
              icon: Icons.person,
              obscure: false,
              text: 'First Name',
            ),
            const SizedBox(height: 20),
            const MyTextField(
              icon: Icons.person,
              obscure: false,
              text: 'Last Name',
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
            const MyTextField(
              suffixIcon: Icons.remove_red_eye_rounded,
              icon: Icons.lock,
              obscure: true,
              text: 'Confirm password',
            ),
            const SizedBox(height: 20),
            const MyTextField(
              icon: Icons.phone,
              obscure: false,
              text: 'Phone Number',
            ),
            const SizedBox(height: 20),
            MyDropdownList(
              onChanged: (String? newValue) {
                print('Selected item: $newValue');
              },
            ),

            const Rigester(),
            const LoginButton(),
          ],
        ),
      ),
    );
  }
}
