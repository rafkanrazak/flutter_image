import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: translucents(),
  ));
}

class translucents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("CustomAppBar"),
        backgroundColor: Colors.pink.withOpacity(.5),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV8hJ1Rkc3CAAHV5weX5OxQtxvJ6-zlXRG8WRshBx3WQ&usqp=CAU&ec=48665701',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
