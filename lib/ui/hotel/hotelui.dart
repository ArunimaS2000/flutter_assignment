import 'package:flutter/material.dart';
 void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Hotel(),));
 }

class Hotel extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Stack(
        children:
        [ Image.network("https://cf.bstatic.com/xdata/images/hotel/max1024x768/475836331.jpg?k=75906f5f65a0cbaedd9af9ad18bf1087b2354899ed733a315623901bdc104d38&o=&hp=1",),
         Positioned(bottom: 40.0,left: 13.0 ,
         child: Text('Marriott\nKochi,Kerala',
         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
         Positioned(bottom: 13.0,right: 13.0,
         child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.white,))),
         Positioned(bottom: 5,left: 10,
        child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.grey,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
          onPressed: (){}, child: Text("8.4/85 reviews",style: TextStyle(fontSize: 10),)))
          ]
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                  leading: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star,color: Colors.green,size: 20.0,),
                          Icon(Icons.star,color: Colors.green,size: 20.0,),
                          Icon(Icons.star,color: Colors.green,size: 20.0,),
                          Icon(Icons.star,color: Colors.green,size: 20.0,),
                          Icon(Icons.star_border_outlined,color: Colors.grey,size: 20.0,)
                        ],
                      ),
                     Row(mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on,size: 16.0,),
                      Text('8 km to LuluMall',style: TextStyle(color: Colors.grey,fontSize: 12),)
                    ],
                  ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Text('\$200',style: TextStyle(fontSize: 18,color: Colors.green,fontWeight: FontWeight.bold),),
                      Text('/per night',style: TextStyle(fontSize: 12,color: Colors.grey),)
                    ],
                  ),
                ),
          ),
          Center(child: Container(width:250 ,height: 35,
            child: ElevatedButton(
            style: ElevatedButton.styleFrom( shape: RoundedRectangleBorder
            (borderRadius: BorderRadius.circular(10.0)),primary: Colors.green,),
            onPressed: (){}, child: Text("Book Now")),
          ),
          ),
          SizedBox(height: 15,),
          Text("Kochi Marriott Hotel             ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text("Discover modern elegance at Kochi Marriott Hotel in Kerala, India. Located in the city center of this growing metropolis and part of the LuLu International Shopping Mall, our 5-star Kochi hotel offers refined comfort for every traveler. Relax in our stylish hotel rooms and suites, each with upscale amenities and 24-hour room service. Savor delicious international cuisine in our restaurants and lounges, get pampered at our spa, go for a swim in our outdoor pool, or work out in our 24-hour fitness center. Our venues offer a sophisticated backdrop for meetings, social events and weddings, each complemented by our world-class catering and services. Nearby, the area's most compelling points of interest await, from Cherai Beach and Bolgatty Palace to business and medical centers such Aster Medcity, Amrita Hospital, Cochin International Airport, the convention center and Infopark. Whether staying with us for work or enjoying a getaway, we look forward to welcoming you to our luxury Kochi Marriott Hotel in India",
              style: TextStyle(fontSize: 12,color: Colors.black,),
              textAlign: TextAlign.justify,),
            ),
          )
          ],
          ),
       bottomNavigationBar: BottomNavigationBar(iconSize: 15,items:
       [BottomNavigationBarItem(icon: Icon(Icons.search,),label: 'Search',),
       BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: 'Favorite',),
        BottomNavigationBarItem(icon: Icon(Icons.settings,),label: 'Setting',),
   ],
   currentIndex: 0,
   selectedItemColor: Colors.green,
   unselectedItemColor: Colors.grey,
    )
    );
  }
}