import 'package:flutter/material.dart';

class Recommend extends StatelessWidget {
   var recimage =[
    "asset/image/rec1.jpg",
    "asset/image/rec2.jpg",
    "asset/image/rec3.jpg",
    "asset/image/rec4.jpg",
    "asset/image/rec5.jpg",
    "asset/image/image3.jpeg",
   ];
   var firsttitle = [
    "Hero",
    "Unholy",
    "Lift Me Up",
    "Depression",
    "I'm Good",
    "I'am Bad"
   ];
   var secondtitle = [
    "Taylor Swift",
    "Sam Smith,Kim Petras",
    "Rihanna",
    "Dax",
    "David Guetta & Bebe Rexha",
    "xaviour"
   ];
   
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: recimage.length,scrollDirection: Axis.vertical,
    itemBuilder: (context,index)=> Card(
      color: Colors.black,
      child: ListTile(
        leading: Container(
          height: 50,width: 50,
        child: Image.asset(recimage[index],fit: BoxFit.fill,),),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(firsttitle[index],
            style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 228, 116, 153)),),
            SizedBox(height: 5,),
            Text(secondtitle[index],style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white),)
          ],
        ),
        trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star_border,color: Color.fromARGB(255, 228, 116, 153),size: 20,),
                SizedBox(width: 5,),
                Icon(Icons.download,color: Color.fromARGB(255, 228, 116, 153),size: 20,),
              ],
      )
      ),
    )
    );
  }
}