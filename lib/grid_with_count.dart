import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: grid_count()));
}

class grid_count extends StatelessWidget {
  var img = [
    'icon/car.png',
    'icon/cars.png',
    'icon/car1.png',
    'icon/carss.png',
    'icon/car3.png',
    'icon/car4.png',
    'icon/car5.png',
  ];
  var colors = [
    Colors.purpleAccent,
    Colors.indigoAccent,
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.yellowAccent,
    Colors.orangeAccent,
    Colors.redAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            children: List.generate(
              7,
              (index) {
                return Card(
                  color: colors[index],
                  child: Image(
                    image: AssetImage(img[index]),
                  ),
                );
              },
            )));
  }
}
