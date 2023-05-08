import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: stackeg()));
}

class stackeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Indexed Stack Sample'),
      ),
      body: Stack(children: <Widget>[
        Positioned(bottom: 20,left: 15,
          child: Container(child: Center(child: Text('Anagha')),
            width: 150,
            height: 50,
            color: Colors.red
          ),
        ),
        Positioned(
          right: 170,bottom: 20,
          child: Container(
            child: Center(child: Text('Rafka')),
            width: 150,
            height: 50,
            color: Colors.blue,
          ),
        ),
        Positioned(
          bottom: 20,right: 10,
          child: Container(child: Center(child: Text('Amjad')),
            width: 150,
            height: 50,
            color: Colors.yellow,
          ),
        ),
        Positioned(bottom: 300,left: 30,
          child: Container(
            child: Center(child: Text('Tottenham Hotspur',style: TextStyle(fontSize: 50),),)
          ),
        ),
        Container(
            child: Center(child: Text('Harry Kane',style: TextStyle(fontSize: 20,color: Colors.red),),)
        ),
      ]),
    );
  }
}
