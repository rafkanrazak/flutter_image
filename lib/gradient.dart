// import 'package:first_flutter/first_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp1(),
  ));
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Facebook"),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blueAccent, Colors.white, Colors.lightBlue])),
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 50,bottom: 50),
              child: Text(
                "Login Page",
                style: TextStyle(color: Colors.black),
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(right: 100, left: 100),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.account_circle_outlined),
                      hintText: "Username"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100, left: 100),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      hintText: "Password"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                Fluttertoast.showToast(
                    msg: "This is Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM_RIGHT,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              }, child: Text("Login")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 108.0),
              child: TextButton(
                  onPressed: () {}, child: Text("forgot password ?")),
            ),
          ],
        ),
      ),
    );
  }
}
