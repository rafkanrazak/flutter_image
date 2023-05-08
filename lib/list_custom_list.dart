import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: list_child()));
}

class list_child extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Child'),
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate([
        const Card(
          child: Text('a'),
        ),
        const Card(
          child: Text('b'),
        ),
        const Card(
          child: Text('c'),
        ),
        const Card(
          child: Text('d'),
        ),
      ])),
    );
  }
}
