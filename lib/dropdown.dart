import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

void main() {
  runApp(MaterialApp(
    home: Dropdown(),
  ));
}

class Dropdown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DropdownState();
}

class DropdownState extends State<Dropdown> {
  String dropdownvalue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Dropdown button')),
        body: Center(
            child: DropdownButton<String>(
          value: dropdownvalue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurple,
          ),
          onChanged: (String? value) {
            setState(() {
              dropdownvalue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        )));
  }
}
