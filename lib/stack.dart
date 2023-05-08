import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: stackeg()));
}

class stackeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack'),),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Positioned(left: 200,right: 100,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

}
