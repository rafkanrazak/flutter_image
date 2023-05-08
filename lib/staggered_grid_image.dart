import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(home: staggrd_img()));
}

class staggrd_img extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        staggeredTiles: [
          StaggeredTile.count(1, 2),
          StaggeredTile.count(1, 2),
          StaggeredTile.count(1, 2),
          StaggeredTile.count(1, 2),
        ],
        children: [
          Card(
            child: Column(
              children: [
                Image(image: AssetImage('icon/car.png')),
                Text('Car1')
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image(image: AssetImage('icon/car.png')),
                Text('Car2')
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image(image: AssetImage('icon/banana.png')),
                Text('Car3')
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image(image: AssetImage('icon/car1.png')),
                Text('Car4')
              ],
            ),
          )
        ],
      ),
    );
  }
}
