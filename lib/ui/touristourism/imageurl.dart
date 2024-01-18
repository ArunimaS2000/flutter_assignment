import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui/touristourism/tourism_Details.dart';

class Imageurl extends StatelessWidget {
  final List<String> imageurl =[
    "asset/image/Germany.jpg",
    "asset/image/france.jpg",
    "asset/image/italy.jpg",
    "asset/image/germanic.jpg"
  ];
final List<String> placename =[
  'Germany',
  'France',
  'Italy',
  'Europ'
];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:imageurl.length,itemBuilder: (context,index)=>GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0,),
            child: Image.asset(imageurl[index]),
          ),
          Positioned(bottom: 13.0,left: 13.0,
            child: Text(placename[index],style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),))
          
        ],
      ),
    ));
  }
}