import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      required this.obsecure,
      required this.text,
      this.icon,
      this.sufficon});
  final bool obsecure;
  final String text;
  final IconData? icon;
  final IconData? sufficon;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TextField(
          obscureText: obsecure,
          decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                color: const Color(0xff2c53b7),
              ),
              suffixIcon: Icon(
                sufficon,
              ),
              labelText: text,
              filled: true,
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff2c53b7)),
                  borderRadius: BorderRadius.circular(16)),
              fillColor: Colors.white24),
        ),
      ),
    );
  }
}
