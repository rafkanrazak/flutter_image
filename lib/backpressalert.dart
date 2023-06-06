import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: alerteg(),));
}
class alerteg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async{
      return await showDialog(
          context: context,
          builder: (context)=> AlertDialog(
            title: const Text('exit app'),
            content: const Text('Do you want to exit an App?'),
              actions: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  //return false when click on "NO"
                  child:const Text('No'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  //return true when click on "Yes"
                  child:const Text('Yes'),
                ),
              ],
          ),
      ) ?? false;
    }
    return WillPopScope(onWillPop: showExitPopup,
    child:
      Scaffold(
      appBar: AppBar(
        title: const Text('override back button'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text('override back button'),
      ),
      ),
    );
  }
  
}
