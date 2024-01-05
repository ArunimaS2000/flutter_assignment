// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Musiclibrary(),));
}

class Musiclibrary extends StatelessWidget{
  final imageurl=['asset/image/image1.jpeg',
  'asset/image/image2.jpeg',
  'asset/image/image3.jpeg',
  'asset/image/image4.jpeg',
  'asset/image/image5.jpeg',
  'asset/image/image6.jpeg',
  'asset/image/image7.jpeg',
  'asset/image/image8.jpeg',  
  ];

  Musiclibrary({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 1, 
    child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Playlists',
        style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 24),),
        centerTitle: true,
        bottom: TabBar(
          indicatorColor: Colors.transparent,
          tabs: [
            ListTile(
              tileColor: Color.fromARGB(255, 67, 65, 65),
              leading: const Text('Search.......',style: TextStyle(color: Colors.pinkAccent,fontSize: 18),),
              trailing: Icon(Icons.search,color: Colors.pinkAccent,),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60), 
              ),
            )
          ]), 
      ), 
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8.0,crossAxisSpacing: 8.0),
      childrenDelegate: SliverChildListDelegate( List.generate(8, (index) =>
           Padding(
             padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
             child: Container(
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black,
                     image: DecorationImage(image: AssetImage(imageurl[index]),fit: BoxFit.fill)),
               ),
           ),
        )
      ) ),
   bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'HOME',),
   BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',),
   BottomNavigationBarItem(icon: Icon(Icons.library_music),label: 'Playlist',),
   BottomNavigationBarItem(icon: Icon(Icons.more_horiz),label: 'More',),],
   currentIndex: 2,
   selectedItemColor: Colors.pink,
   unselectedItemColor: Colors.white,
   showUnselectedLabels: true,
   type: BottomNavigationBarType.fixed,
   backgroundColor: Colors.black,)
      ),
       );}
}