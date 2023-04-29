
import 'package:flutter/material.dart';
import 'package:flutter_image/listpage.dart';


void main() {
  runApp(MaterialApp(
    home: App(),
  ));
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Appstate();
}

class Appstate extends State<App> {
  var formkey = GlobalKey<FormState>();
  bool showpas = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBjk7KiWJFD1eXjG-Dwy_TjaA8edWMg1bkvUAsFksoYg&usqp=CAU&ec=48665701'),
                fit: BoxFit.cover)),
        child: Form(
          key: formkey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Username"),
                  validator: (username) {
                    if ( username == null || username!.isEmpty) {
                      return "This field is  required";
                    }
                    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(username)) {
                      return "Please enter valid email";
                    }
                      return null;
                  },

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: TextFormField(
                  obscureText: showpas,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Password",
                  prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          if (showpas){
                            showpas = false;
                          }
                          else{
                            showpas = true;
                          }
                        });
                      },
                      icon: Icon(showpas == true ? Icons.visibility_off: Icons.visibility),
                    )
                  ),
                  validator: (password){
                    if (password!.isEmpty || password.length <6) {
                      return "password valid";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 108, left: 108),
                child: ElevatedButton(
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => listpage()));
                      }
                    },
                    child: Text("Login")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
