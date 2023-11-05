import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/hello.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: Splash3()));
}
class Splash3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Splash3state();

}

class _Splash3state extends State<Splash3>{
  @override
  void initState() {
   Timer(const Duration(seconds: 4), () { 
  
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Hello()));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [Lottie.asset('asset/image/Animation - 1699111185039.json',height: 500,width: 500),
          Text('Welcome User..!!!!!',style: GoogleFonts.dancingScript(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)
          ],
        )
        
        
      ),

    );
  }

} 
