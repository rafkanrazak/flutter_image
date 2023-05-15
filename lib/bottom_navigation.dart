import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyBottomBar()));
}
class MyBottomBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyBottomBarState();

  }
class MyBottomBarState extends State<MyBottomBar>{
  int selected = 0;
  List bodys = const <Widget>[
    Padding(padding: EdgeInsets.all(10.0), child: Center(child: Card(child: Text('Account'),)),),
    Padding(padding: EdgeInsets.all(8.0), child: Card(child: Text('settings'),),),
    Padding(padding: EdgeInsets.all(8.0), child: Card(child: Text('Favorites'),),),
    Padding(padding: EdgeInsets.all(8.0), child: Card(child: Text('Home'),),),
  ];
  void onitemtapped (int index){
    setState(() {
      selected = index;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('Bottom nav'),),
     bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.fixed,
         unselectedItemColor: Colors.green,
         selectedItemColor: Colors.yellow,
         backgroundColor: Colors.blue,
         items: [
       BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined),label: 'Account'),
       BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
       BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
       BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
     ],
     currentIndex: selected,
     onTap: onitemtapped,),
     body: bodys[selected],
   );
  }

}