import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ExpandedEg(),));
}
class ExpandedEg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expanded'),),
      body: ExpansionTile(title: Text('Expanded colors'),
      subtitle: Text('colors'),
      children: [
       ListTile(
         leading: CircleAvatar(backgroundColor: Colors.purple,),
         title: Text('purple'),
       ),
        ListTile(
          leading: CircleAvatar(backgroundColor: Colors.blue,),
          title: Text('blue'),
        ),
        ListTile(
          leading: CircleAvatar(backgroundColor: Colors.green,),
          title: Text('green'),
        ),
        ListTile(
          leading: CircleAvatar(backgroundColor: Colors.deepPurple,),
          title: Text('deep purple'),
        )
      ],),
    );
  }

}