import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image/loginpage.dart';

void main() {
  runApp(MaterialApp(home: List_build()));
}
  class List_build extends StatelessWidget{
  var name = ['Anu','Zara','Meenu','Rithu'];
  var color = [800,700,600,500];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(title: Text('My App'),),
  body: ListView.builder(
  itemCount: name.length,
  itemBuilder: (BuildContext context,index){

  return Container(
  height: 50,
  color: Colors.yellow[color[index]],
  child: Text(name[index]),
  );
  }
  ),
  );
  }
  }
