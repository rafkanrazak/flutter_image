import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image/ex_image.dart';

void main() {
  runApp(MaterialApp(
    home: Myshow(),
  ));
}

class Myshow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Myshowstate();
}

class Myshowstate extends State<Myshow> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => app()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://www.pexels.com/photo/1590549/download/"))),
        child: Text("welcome"),
      ),
    );
  }
}
