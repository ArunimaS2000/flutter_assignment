import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui/touristourism/imageurl_details.dart';

class Details extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("asset/image/Germany.jpg"),
            SizedBox(height: 10,),
            Text("  Germany",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text("Germany is home to over 80 million people – as well as a diverse array of religions, customs, and traditions that make up the rich national psyche. Germany is known for its long and rich history, one that has put it at the forefront of European thought, politics, and art for over 1,000 years. This history has shaped a culture that combines predominantly Christian values with literature, art, philosophy, logic, reason, and, of course, a love of beer and sausages.",
              textAlign: TextAlign.justify,),
              
            ),
            Padding(padding: EdgeInsets.all(8.0),
            child: Text("Place to Visit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
            ),
            Container(
              height: 100,width: 500,
              child: Imageurl2(),
            ),
            Center(
              child: Container(width: 250,height: 30,
                child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),primary: Colors.deepOrange),
                child: Text("   Press to Explore   ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),),
              ),
            )
          ],
        ),
      ),


    );
  }
}