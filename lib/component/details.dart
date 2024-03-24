import 'package:flutter/material.dart';

class Details extends StatelessWidget {
 const Details ({
     required this.name,
     required this.image,
     required this.desc,
    required this.maxLines,
    super.key,
  });

  final String name , desc;
  final Image image;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return
          Row (
            children: [
                Container( 
                   margin: const EdgeInsets.only(left: 1),
                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: 
               Image.asset( image as String, width: 250 , height:300 ),
               ),
              
              Column (
              children: [ 
                   Text(name ,  
                       style: const TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 15,
                       color:Colors.black,   
            ),
             ),
            const  Padding(padding:EdgeInsets.all(55) ),
             const  Row( 
              children: [
                Text("Rate  "),
              Icon(
                Icons.star_border_sharp,
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
              Icon(
                Icons.star_border_sharp,
                size: 24,
              ),
            ],)
          ]
      ),
  Container(
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.all(15),
            child:  Text(desc , 
                           maxLines: maxLines,
                           overflow: TextOverflow.ellipsis, style:const TextStyle(
                            color:Colors.black,
                            fontSize: 20
                           ), ),
          ),
          
          Container(
        margin: const EdgeInsets.all(25),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xff2c53b7),
          border: Border.all(
            width: 1,
            color: const Color(0xff2c53b7),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
         child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              'Book borrowing request           ',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.auto_stories,
              color: Colors.white,
            ),
          ],
        )),
      ],);
      
  }
}

  
