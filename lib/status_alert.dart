import 'package:flutter/material.dart';
import 'package:status_alert/status_alert.dart';

void main() {
  runApp(MaterialApp(
    home: status_alert(),
  ));
}

class status_alert extends StatelessWidget {
  const status_alert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          StatusAlert.show(
            context,
            duration: Duration(seconds: 2),
            title: 'Title',
            subtitle: 'Subtitle',
            configuration: IconConfiguration(icon: Icons.done),
            maxWidth: 260,
          );
        },
        child: Text('hi'),
      ),
    ));
  }
}
