import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: list_cust()));
}

class list_cust extends StatelessWidget {
  var names = ['Ammu', 'Meenu', 'Abdul','Lavanya'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          return Card(
            child: Text(names[index]),
          );
        }, childCount: names.length),
      ),
    );
  }
}