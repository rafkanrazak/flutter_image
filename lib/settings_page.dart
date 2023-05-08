import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: sttng()));
}
class sttng extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Settings',style: TextStyle(fontSize: 50,color: Colors.pink,),
      )),
    );
  }

}