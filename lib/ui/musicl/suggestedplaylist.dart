import 'package:flutter/material.dart';

class Suggestedplay extends StatelessWidget {

  List<String> suggestedplaylist =[
  'asset/image/image1.jpeg',
  'asset/image/image4.jpeg',
  'asset/image/image6.jpeg',
  'asset/image/image5.jpeg',
  
  
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: suggestedplaylist.length,scrollDirection: Axis.horizontal,
    itemBuilder: (context,index)=>Container(
    height: 100,width: 100,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(suggestedplaylist[index],fit: BoxFit.contain,),
    ),
    ));
  }
}