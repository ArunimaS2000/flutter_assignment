import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui/touristourism/imageurl.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Tourism_home(),));
}
class Tourism_home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(padding: const EdgeInsets.all(0),
          child: Text('  Popular',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
          Expanded(child:Imageurl(), )
        ],
      )
        
    );
  }
}