import 'package:flutter/material.dart';
import 'package:fluttertest/component/bookcard.dart';
import '../component/my_textfield.dart';

class BooksList extends StatelessWidget {
  const BooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Books List",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: const SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 20),
            MyTextField(
              icon: Icons.search,
              obscure: false,
              text: 'Search',
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Text(
              "Artificial Intelligence",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            BookCard(name: "The Alignment Problem"),
            BookCard(name: "Deep Learning"),
            BookCard(
                name:
                    "Artificial Intelligence A \n Modern Approach \n (3rd Edition)"),
            BookCard(name: "Human Compatible"),
            BookCard(name: "Python for everybody"),
          ],
        )));
  }
}
