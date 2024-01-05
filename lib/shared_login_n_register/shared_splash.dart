import 'package:flutter/material.dart';
import 'package:flutter_assignment/shared_login_n_register/shared_login.dart';
import 'package:flutter_assignment/shared_login_n_register/shared_register.dart';

void main(){
  runApp(MaterialApp(home: SharedSplash(),));
}
class SharedSplash extends StatelessWidget {
  const SharedSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image(image: AssetImage('asset/image/Papirus-Team-Papirus-Apps-Manjaro-welcome.512.png'),height: 100,width: 100,),
          Text("WELCOME BACK!!!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 250,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shared_login()));
            },
            style: ElevatedButton.styleFrom(primary: Colors.green,padding: EdgeInsets.symmetric(horizontal: 50,vertical: 15),),
             child: Text('      Login      ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shared_register()));
            }, 
            style:ElevatedButton.styleFrom(primary: Colors.green,padding: EdgeInsets.symmetric(horizontal: 50,vertical: 15),),
            child: Text('   Register    ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),),
          )
          ],
        ),
      ),
    );
  }
}