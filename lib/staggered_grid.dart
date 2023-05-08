import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(home:staggrd ()));
}

class staggrd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(crossAxisCount: 4,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        staggeredTiles: [
          StaggeredTile.count(2,2),
          StaggeredTile.count(2,3),
          StaggeredTile.count(4,2),
          StaggeredTile.count(1,4),
          StaggeredTile.count(2,2),
        ],
        children: [
          customchild(icondate: Icons.icecream,bgcolor: Colors.teal,),
          customchild(icondate: Icons.icecream,bgcolor: Colors.greenAccent,),
          customchild(icondate: Icons.icecream,bgcolor: Colors.green,),
          customchild(icondate: Icons.icecream,bgcolor: Colors.tealAccent,),
          customchild(icondate: Icons.icecream,bgcolor: Colors.lightGreen,),
        ],
      )
    );
  }

}
class customchild extends StatelessWidget{
  final Color? bgcolor;
  final IconData icondate;
  customchild({this.bgcolor,required this.icondate});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Icon(icondate,color: Colors.pink),
    );
  }
}