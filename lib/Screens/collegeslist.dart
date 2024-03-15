import 'package:flutter/material.dart';
import 'package:fluttertest/component/my_textfield.dart';
import 'package:fluttertest/component/Colleges_Button.dart';

// ignore: camel_case_types
class CollegesList extends StatelessWidget {
  const CollegesList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      SizedBox(
        height: 34,
      ),
      Text(
        'Colleges Lists',
        style: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 20),
      MyTextField(
        icon: Icons.search,
        obscure: false,
        text: 'Search',
      ),
      Colleges_Button(
          text:
              'Faculty of Engineering \nShoubra Branch                                    '),
      Colleges_Button(text: 'Faculty of medicine                             '),
      SizedBox(height: 1),
      Colleges_Button(
          text:
              'Faculty of Commerce and \nBusiness Administration                    '),
      Colleges_Button(
          text: 'Faculty of Law                                     '),
      Colleges_Button(text: 'Faculty of Pharmacy                          '),
      Colleges_Button(text: 'Faculty of Agriculture                        '),
      Colleges_Button(text: 'Faculty of Education                          '),
      Colleges_Button(
          text: 'Faculty of Arts                                    '),
      Colleges_Button(
          text:
              'Faculty of Computers \nand Information                                 '),
      Colleges_Button(text: 'Faculty of Science                            '),
      Colleges_Button(
          text:
              'Faculty of Applied \nArts                                                    '),
      Colleges_Button(
          text:
              'Faculty of Special \nEducation                                         '),
      Colleges_Button(
          text:
              'Faculty of Physical \nEducation                                        '),
      Colleges_Button(
          text:
              'Faculty of Veterinary \nMedicine                                          '),
      Colleges_Button(text: 'Faculty of Nursing                          '),
      Colleges_Button(text: 'Faculty of Physiotherapy              '),
    ])));
  }
}
