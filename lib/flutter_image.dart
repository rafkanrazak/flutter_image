import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: splash()));
}

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("icon/money.png"),height:100,width:160,)
    ]

          ),
        ),
      ),
    );
  }

}
