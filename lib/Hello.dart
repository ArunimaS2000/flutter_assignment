import 'package:flutter/material.dart';
import 'package:flutter_assignment/login.dart';
import 'package:flutter_assignment/signup.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: use_key_in_widget_constructors
class Hello extends StatelessWidget{
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [Text('Hello There!!',style: GoogleFonts.firaSans(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),),const SizedBox(height: 20,),
            const Text('Automatic Identity Verification Which Enable You To Verify your identity',style: TextStyle(fontSize: 10,color: Colors.black),
            ),const SizedBox(height: 50,),
            Image.network('asset/image/imageassign.png',height: 200,width: 200,),
            const SizedBox(height: 30,),

            MaterialButton(height: 55,minWidth: 300,onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
            },color: const Color.fromARGB(255, 87, 7, 207),
            shape: const StadiumBorder(),
            child: const Text('Login',style: TextStyle(color: Colors.white),),),

            const SizedBox(height: 20,),
             MaterialButton(height: 55,minWidth: 300,onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
             },color: const Color.fromARGB(255, 227, 27, 27),
            shape: const StadiumBorder(),
            child: const Text('Sign UP'),),
          ],
        ),
      ),
    );
  }

}