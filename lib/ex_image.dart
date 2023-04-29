import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home: app(),
  theme: ThemeData(primarySwatch: Colors.blue),));
}
class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container
        (decoration: BoxDecoration(image:DecorationImage(image:NetworkImage("https://designimages.appypie.com/appbackground/appbackground-22-homedecor-plant.jpg"),fit: BoxFit.cover ))
        ,child: Center (
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Image(image: AssetImage("icon/instagram.png"),height: 50,width: 50,),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: ElevatedButton(onPressed: (){},child: Text("Login"),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Text("Forgot Password ?",style: TextStyle(color: Colors.white),),
                )
        ]
            ,),
        ),
      )
    );
  }
}