import 'package:flutter/material.dart';
import 'package:flutter_assignment/Hello.dart';
import 'package:flutter_assignment/homepage.dart';
import 'package:flutter_assignment/signup.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget{
  String username = 'admin';
  String password = 'abc123';
  final user_controller = TextEditingController();
  final pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
      leading: IconButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Hello(),));
      }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),elevation: 0,),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text('Login',style: GoogleFonts.firaSans(fontSize: 50,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Welcome Back ! Login With Your Credentials ",style: GoogleFonts.firaSans(fontSize: 10),),
              SizedBox(height: 40,),

              Padding(padding: EdgeInsets.all(15.0),
              child: TextField(
                controller: user_controller,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  hintText: "Email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                ),
              ),),SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(bottom: 15.0,left: 15,right: 15),
              child: TextField(
                controller: pass_controller,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password),
                  hintText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),),),),
                  SizedBox(height: 20,),

                   MaterialButton(height: 55,minWidth: 300,onPressed: (){ 
                    if (username == user_controller.text && password == pass_controller.text)
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                    }
                    user_controller.text ="";
                    pass_controller.text ="";
                   },color: Color.fromARGB(255, 87, 7, 207),
            shape: const StadiumBorder(),
            child: const Text('Login',style: TextStyle(color: Colors.white),),),
            SizedBox(height: 20,),

            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
            }, 
            child: RichText(text: TextSpan(
              style: TextStyle(
                color: Colors.black,fontSize: 15,
              ),
              children: [
                TextSpan(text: "Don't Have An Account?" ),
                TextSpan(text: "Sign UP",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold))
              ]
            )))

            ],
          ),
        ),
      ),
    );
  }

}