import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    home : Fruit(),));
}
// ignore: must_be_immutable
class Fruit extends StatelessWidget{
  var imagess =[
     "asset/image/Bingxueling-Fruit-Vegetables-Apple-red.256.png",
     "asset/image/Iconarchive-Realistic-Fruits-Mango.512.png",
     "asset/image/Iconicon-Veggies-Bananas.512.png",
     "asset/image/Iconarchive-Realistic-Fruits-Grape.512.png",
     "asset/image/Artbees-Paradise-Fruits-Kiwi.512.png",
     "asset/image/Gcds-Chinese-New-Year-Orange.512.png",
     "asset/image/Iconarchive-Realistic-Fruits-Watermelon.512.png",
     "",
     
  ];
  var namess =[
    'Apple',
    'Mango',
    'Banana',
    'Grapes',
    'Kiwies',
    'Orange',
    'watermelon'
    '',
    
  ];
  
  var unit =[
    'Kg',
    'Doz',
    'Doz',
    'kg',
    'Pc',
    'Doz',
    'kg'
    '',
    
  ];
  var price =[
    '\$20',
    '\$30',
    '\$10',
    '\$8',
    '\$40',
    '\$15',
    '\$25'
    '',
  
  ];

  Fruit({super.key});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text('Product List',textAlign: TextAlign.center,),
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart),),
      ],
      
    ),
    body: ListView.custom(
      childrenDelegate: SliverChildBuilderDelegate(
        childCount: 7,
        (context, index) => Card(
          color: const Color.fromARGB(255, 193, 217, 229),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               Image(image: AssetImage(imagess[index]),height: 50,width: 50,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(text: TextSpan(style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[const TextSpan(text: 'Name:',style: TextStyle(fontSize: 12)),TextSpan(text: namess[index],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 12))])),
                     RichText(text: TextSpan(style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[const TextSpan(text: 'Unit:',style: TextStyle(fontSize: 12)),TextSpan(text: unit[index],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 12))])),
                     RichText(text: TextSpan(style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[const TextSpan(text: 'Price:',style: TextStyle(fontSize: 12)),TextSpan(text: price[index],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 12))])),
                     ],
                ),
                
                MaterialButton(onPressed: (){},
                color: const Color.fromARGB(255, 82, 78, 78),
               minWidth: 40,
                height: 40,
                child:  const Text('Add to Cart',style: TextStyle(color: Colors.white),),)
              ],
            ),
          )

    ))
   ));
  }

}