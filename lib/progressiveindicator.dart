// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class lin_prg extends StatefulWidget {
  const lin_prg({super.key});

  @override
  State<lin_prg> createState() => _lin_prgState();
}

class _lin_prgState extends State<lin_prg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          LinearProgressIndicator(
            value: 0.5,
          ), //<--  HERE
        ],
      )),
    );
  }
}

class lin_prg2 extends StatefulWidget {
  const lin_prg2({super.key});

  @override
  State<lin_prg2> createState() => _lin_prg2State();
}

class _lin_prg2State extends State<lin_prg2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          LinearProgressIndicator(
            value: 0.7, // <-- SEE HERE
          ),
        ],
      )),
    );
  }
}

class cir_2 extends StatefulWidget {
  const cir_2({super.key});

  @override
  State<cir_2> createState() => _cir_2State();
}

class _cir_2State extends State<cir_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(), //<-- SEE HERE
          ],
        ),
      )),
    );
  }
}

class cir2_a extends StatefulWidget {
  const cir2_a({super.key});

  @override
  State<cir2_a> createState() => _cir2_aState();
}

class _cir2_aState extends State<cir2_a> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularProgressIndicator(
              value: 0.3, // <-- SEE HERE
            ),
          ],
        ),
      ),
    ));
  }
}
