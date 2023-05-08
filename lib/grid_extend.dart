import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: grid_custom()));
}
class grid_custom extends StatelessWidget {
  var img = [
    'icon/red.png',
    'icon/green.png',
    'icon/white.png',
    'icon/gold.png',
    'icon/blue.png',
    'icon/orange.png',
    'icon/red.png',
    'icon/green.png',
    'icon/white.png',
    'icon/gold.png',
    'icon/blue.png',
    'icon/orange.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 60,
      children: List.generate(12, (index) {
        return Card(
          child: Image(image: AssetImage(img[index])),
        );
      }),
        ),
          );
  }
}
