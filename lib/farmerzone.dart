import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: farmerpage(),));
}
class farmerpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       slivers: [
         SliverAppBar(title: Text('Farmers Fresh Zone'),
         floating: true,
         actions: [
           Icon(Icons.location_on_outlined)
         ],
         )
       ],
     ),
   );
  }

}