import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: grid()));
}

class grid extends StatelessWidget {
  var names = ['p', 'q', 'r', 's'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 20, mainAxisSpacing: 20),
        children: [
          Card(
            color: Colors.orange,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Icon(Icons.add_a_photo_rounded),
                ),Text('Camera')],
            ),
          ),
          Card(
            color: Colors.yellow,
            child: Column(
              children: [Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Icon(Icons.phone),
              ),Text('Phone')],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Column(
              children: [Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Icon(Icons.home),
              ),Text('Home')],
            ),
          ),
          Card(
            color: Colors.purple,
            child: Column(
              children: [Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Icon(Icons.mail),
              ),Text('G-mail')],
            ),
          ),
          Card(
            color: Colors.pinkAccent,
            child: Column(
              children: [Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Icon(Icons.message),
              ),Text('Messages')],
            ),
          ),
          Card(
            color: Colors.deepOrangeAccent,
            child: Column(
              children: [Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Icon(Icons.photo),
              ),Text('Photos')],
            ),
          ),
        ],
      ),
    );
  }
}
