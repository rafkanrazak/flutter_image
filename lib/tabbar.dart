import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image/gridview.dart';
import 'package:flutter_image/list-builder2.dart';
import 'package:flutter_image/list_builder.dart';

void main(){
  runApp(MaterialApp(home: Mytab()));
}
class Mytab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 4,
     child: Scaffold(
       appBar: AppBar(
         title: Text('WhatsApp'),
         backgroundColor: Colors.green[600],
         actions: [
           Icon(Icons.camera_alt),
           SizedBox(width: 20,),
           Icon(Icons.search),
           PopupMenuButton(itemBuilder: (context){
           return[
            PopupMenuItem(child: Text('about')),
             PopupMenuItem(child: Text('settings')),
             PopupMenuItem(child: Text('logout')),

           ];
           }
           )],
         bottom: TabBar(unselectedLabelColor: Colors.yellow,
           tabs: [
           Tab(icon: Icon(Icons.people),),
           Tab(text: 'Chat',),
           Tab(text: 'Status',),
           Tab(text: 'Call',)
         ],),
       ),
body: TabBarView(children: [
  Center(child: Text('Contact')),
  grid_view(),
list_build2()
],),
     ),
   );
  }

}