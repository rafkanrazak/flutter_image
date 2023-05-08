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
      body: GridView.custom(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        childrenDelegate: SliverChildBuilderDelegate((context,index){
          return Container(
            child: ListView(
              children: [
                Text('Heeeya'),
                Image(image: AssetImage(img[index])),
              ],
            ),
          );

        },
          childCount: img.length,
        ),
      ),
    );
  }
}

