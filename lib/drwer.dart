import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image/loginpage.dart';
import 'package:flutter_image/settings_page.dart';

void main() {
  runApp(MaterialApp(home: drwr()));
}

class drwr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Drawer'),
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.lightGreen),
          child: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('icon/123.jpg'))),
                  accountName: Text('Rafkan Razak'),
                  accountEmail: Text('rafkanrazak700@gmail.com'),
                  currentAccountPicture: GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: (AssetImage('icon/white.png')),
                    ),
                  ),
                  otherAccountsPictures: [
                    CircleAvatar(
                      backgroundImage: (AssetImage('icon/red.png')),
                    ),
                    CircleAvatar(
                      backgroundImage: (AssetImage('icon/gold.png')),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => App()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => sttng()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ));
  }
}
