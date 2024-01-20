import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui/musicl/recommendedplay.dart';
import 'package:flutter_assignment/ui/musicl/suggestedplaylist.dart';
void main(){
  runApp(MaterialApp(home: MusicHome(),));
}

class MusicHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Musify.',style: TextStyle(color: Color.fromARGB(255, 228, 116, 153),fontSize: 30),),
      centerTitle: true,backgroundColor: Colors.black,),
    body: Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            Padding(padding: EdgeInsets.all(10),
            child: Text("Suggested Playlists",
            style: TextStyle(color:Color.fromARGB(255, 228, 116, 153),
            fontSize: 15,fontWeight: FontWeight.bold),
            ),
            ),
            Container(
              height: 100,width:500,
              child: Suggestedplay(),
            ),
            Padding(padding: EdgeInsets.all(10),
            child: Text("Recommended for you",
            style: TextStyle(color:Color.fromARGB(255, 228, 116, 153),
            fontSize: 15,fontWeight: FontWeight.bold)
            ),
            ),
           Expanded(child: Recommend())
          ],
        ),
    ),
     bottomNavigationBar: BottomNavigationBar(iconSize: 15,items:
       [BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home',),
       BottomNavigationBarItem(icon: Icon(Icons.search,),label: '',),
       BottomNavigationBarItem(icon: Icon(Icons.book,),label: '',),
       BottomNavigationBarItem(icon: Icon(Icons.more_horiz,),label: '',),
   ],
   currentIndex: 0,
   selectedItemColor:Color.fromARGB(255, 228, 116, 153),
   unselectedItemColor: Colors.white,
   showUnselectedLabels: true,
   type: BottomNavigationBarType.fixed,
   backgroundColor: Colors.black,
    )    
        
      
    );
  }
}