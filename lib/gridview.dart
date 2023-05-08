import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: grid_view()));
}

class grid_view extends StatelessWidget {
  var names = ['p', 'q', 'r', 's'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 20, mainAxisSpacing: 20
        ),
        children: [
          Image(image: AssetImage('icon/5.jpg')),
          Image(image: AssetImage('icon/6.jpg')),
          Image(image: AssetImage('icon/8.jpg')),
          Image(image: AssetImage('icon/9.jpg')),
          Image(image: AssetImage('icon/10.jpg')),
        ],
      ),
    );
  }
}
