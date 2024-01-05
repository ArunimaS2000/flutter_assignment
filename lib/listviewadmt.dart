import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: listview5(),));
}
// ignore: must_be_immutable, camel_case_types
class listview5 extends StatelessWidget{
  var months =['january','february','march','april','may','june','july','august','septemper','octobar','november','december'];

  listview5({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,),
      body: ListView.separated(itemBuilder: (context,index){
        return ListTile(
          leading: Text(months[index],style: const TextStyle(fontWeight: FontWeight.bold),),
        );
      }, 
      separatorBuilder: (context,index){
        if(index % 4==0){
          return const Card(
            color: Colors.red,
            child: Text('Advertisement'),
          );
          
        }
        else{
          return const SizedBox();
        }
      }, itemCount: 12)
    );
  }

}