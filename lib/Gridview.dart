import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home:Gridview()));
  
}

// ignore: must_be_immutable
class Gridview extends StatelessWidget{
 var colorss =[
  Colors.blue,
  Colors.orange,
  Colors.green,
  Colors.pink,
  Colors.red,
  Color.fromARGB(255, 49, 24, 173),
  Colors.yellow,
  Color.fromARGB(255, 143, 13, 87),
  Color.fromARGB(255, 27, 102, 29),
  Color.fromARGB(255, 138, 125, 5),
  Color.fromARGB(255, 171, 40, 83),
  Color.fromARGB(255, 217, 151, 52),

 ];
  var icondata =[
    Icons.home,
    Icons.notifications,
    Icons.linked_camera,
    Icons.star_border_sharp,
    Icons.bug_report,
    Icons.book,
    Icons.phone,
    Icons.mail,
    Icons.flag,
    Icons.cloud_off,
    Icons.mic_off,
    Icons.file_copy,
  ];
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 1.98,crossAxisCount: 2,mainAxisSpacing: 30,crossAxisSpacing: 20),
      childrenDelegate: SliverChildListDelegate( List.generate(12, (index) =>SizedBox(height: 25,width: 30,
        child: Card(
          color: colorss[index],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [ 
                  Icon(icondata[index],size: 30,),
                Text('Heart\nShaker',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                ],
              ),
            
        
        ),
        )
      ) ),
      )
     
           
      );
      
    
    
  }

}