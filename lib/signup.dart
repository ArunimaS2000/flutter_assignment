import 'package:flutter/material.dart';
import 'package:flutter_assignment/Hello.dart';
import 'package:flutter_assignment/login.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    
      appBar: AppBar(backgroundColor: Colors.white,
      leading: IconButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Hello()));
      }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),elevation: 0,),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text('Sign UP',style: GoogleFonts.firaSans(fontSize: 50,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Create An Account  ",style: GoogleFonts.firaSans(fontSize: 10),),
              SizedBox(height: 40,),

              Padding(padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  hintText: "Email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                ),
              ),),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(bottom: 15.0,left: 15,right: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: " Create Password",
                  prefixIcon: Icon(Icons.password),
                  hintText: "Create Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),),),),
                  SizedBox(height: 20,),

            Padding(
                padding: const EdgeInsets.only(bottom: 15.0,left: 15,right: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: " Confirm Password",
                  prefixIcon: Icon(Icons.password),
                  hintText: "Confirm Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),),),),
                  SizedBox(height: 20,),      

                   MaterialButton(height: 55,minWidth: 300,onPressed: (){},color: Color.fromARGB(255, 227, 27, 27),
            shape: const StadiumBorder(),
            child: const Text('Sign UP',style: TextStyle(color: Colors.white),),),
            SizedBox(height: 20,),

            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
            }, 
            child: RichText(text: const TextSpan(
              style: TextStyle(
                color: Colors.black,fontSize: 15,
              ),
              children: [
                TextSpan(text: "Already Have An Account?" ),
                TextSpan(text: "Login",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold))
              ]
            )))

            ],
          ),
        ),
      ),
    );
  
  }

}