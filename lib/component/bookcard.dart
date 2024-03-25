import 'package:flutter/material.dart';
import 'package:fluttertest/Screens/booksdetails.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
        shadowColor: Colors.black,
        color: Colors.white,
        child: SizedBox(
          width: 400,
          height: 150,
          child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(
                        Icons.announcement_outlined,
                        size: 24,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.star_outlined,
                            size: 24,
                          ),
                          Icon(
                            Icons.star_outlined,
                            size: 24,
                          ),
                          Icon(
                            Icons.star_outlined,
                            size: 24,
                          ),
                          Icon(
                            Icons.star_border_sharp,
                            size: 24,
                          ),
                          Icon(
                            Icons.star_border_sharp,
                            size: 24,
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BooksDetails()));
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xff2c53b7))),
                        child: const Padding(
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Text(
                                'Details',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ));
  }
}
