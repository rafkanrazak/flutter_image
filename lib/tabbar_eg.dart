import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: tabbar()));
}
class tabbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
        appBar: AppBar(
          title: Text('Cars'),
          backgroundColor: Colors.yellow,
            actions: [
            PopupMenuButton(itemBuilder: (context){
              return [
                PopupMenuItem(child: Text('My acount'))
              ];
        })],
          bottom: TabBar(tabs:[
            Tab(icon: Icon(Icons.directions_car,color: Colors.black,),
            child: Column(children: [
              Text('Car',style: TextStyle(color: Colors.black))
            ],),),
            Tab(icon: Icon(Icons.directions_bike,color: Colors.black,),
              child: Column(children: [
                Text('Bike',style: TextStyle(color: Colors.black))
              ],),),
            Tab(icon: Icon(Icons.directions_bus,color: Colors.black,),
              child: Column(children: [
                Text('Bus',style: TextStyle(color: Colors.black))
              ],),),
            Tab(icon: Icon(Icons.directions_boat,color: Colors.black,),
              child: Column(children: [
                Text('Boat',style: TextStyle(color: Colors.black))
              ],),),

          ]
          ),
    ),
          body: TabBarView(children: [
            cars(),
            bike(context),
          ],),
    ),
    );

  }
  Widget bike(BuildContext context){
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('BIKE'),
        Icon(Icons.directions_bike,size: 150)],)
    );
  }
}
class cars extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('CAR'),
        Icon(Icons.directions_car,size: 150)
      ],),
    );
  }
}