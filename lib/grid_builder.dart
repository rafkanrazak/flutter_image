import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: grid_build()));
}

class grid_build extends StatelessWidget {
  var image = [
    'icon/fruit.png',
    'icon/fruitss.png',
    'icon/banana.png',
    'icon/apple.png',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(itemCount: image.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Card(
              child: Image.asset(image[index]),
            );
          }),
    );
  }
}
