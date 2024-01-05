import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Splash4(),));
}
class Splash4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [ Image(image: AssetImage("asset/icons/Whatsapp.png"),height: 400,width: 100,),
           SizedBox(height: 200,),
          Text('from ',
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey,
          ),),
          Text('FACEBOOK',
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),)],
        ) ),
    );
  }

}