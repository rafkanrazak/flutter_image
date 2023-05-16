import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [

            LottieBuilder.network(
                'https://assets10.lottiefiles.com/private_files/lf30_skwgamub.json'),

            Lottie.asset('animation/women.json'),
          ],
        ),
      ),
    );
  }
}
