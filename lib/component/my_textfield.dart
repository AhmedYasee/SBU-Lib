import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.obscure,
    required this.text,
    this.icon,
    this.suffixIcon,
  }) : super(key: key);

  final bool obscure;
  final String text;
  final IconData? icon;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
          ),
          TextField(
            obscureText: obscure,
            decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                color: const Color(0xff2c53b7),
              ),
              suffixIcon: Icon(
                suffixIcon,
              ),
              labelText: text,
              filled: true,
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(16),
              ),
              fillColor: Colors.white24,
            ),
          ),
        ],
      ),
    );
  }
}
