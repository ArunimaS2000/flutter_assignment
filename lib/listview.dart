import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listview1(),));   
}
// ignore: must_be_immutable
class Listview1 extends StatelessWidget{
  var names =[
    'Delhi',
    'Finland',
    'London',
    'Vancouver'
  ];
   var images =['asset/image/delhi.jpg',
   'asset/image/finland.jpg',
   'asset/image/london (2).jpg',
   'asset/image/vancouver.jpg'
    ];
   var sub =['India','Europe','UK','Canada'];
   var sub2 =['Population :32.9mill','Population :5.54mill','Population :8.8mill','Population :2.6mill'];

  Listview1({super.key});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(backgroundColor: Colors.red,
      title: const Text('Cities Around World',textAlign:TextAlign.center,),
      centerTitle: true,
      
      
    ),
    
    body: ListView(
      children: 
        List.generate(4, (index) => 
        SizedBox(height: 100,
          child: Card(
            elevation: 400,color: Colors.orange,
            child: ListTile(
              
              leading: SizedBox(height: 500,
                child: Image.asset(images[index],fit: BoxFit.fitHeight,)),
              
              title: Text(names[index],textAlign: TextAlign.center,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height:10),
                  Text(sub[index],style: const TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                  Text(sub2[index],style: const TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
        ),)
    
    ),
    
    );
   
  }
  

}