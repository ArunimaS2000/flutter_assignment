import 'package:flutter/material.dart';

class Imageurl2 extends StatelessWidget {

  final List<String> imageurl2 =[
    "asset/image/germania.jpg",
     "asset/image/germanib.jpg",
     "asset/image/germanic.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(scrollDirection: Axis.horizontal,itemCount: imageurl2.length,
          itemBuilder: (context,index)=>Padding(padding: EdgeInsets.all(5.0),
          child: Image.asset(imageurl2[index],width: 100,height: 100,fit: BoxFit.contain,),));
        
  }
}