import 'package:flutter/material.dart';

import 'list_page.dart';

class Passdata2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;

    final product = dummyproducts.firstWhere((data) => data["id"] == productId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Products Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("${product["id"]}"),
            Text("${product["name"]}"),
            Text("${product["description"]}"),
            Image.asset(product["image"]),
          ],
        ),
      ),
    );
  }
}
