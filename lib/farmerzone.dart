import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: farmerpage(),
  ));
}

class farmerpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('Farmers Fresh Zone'),
          floating: true,
          actions: [
            Icon(Icons.location_on_outlined),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Kozhikode'),
              ),
            )
          ],
          bottom: AppBar(
            title: Container(
              color: Colors.white,
              // width: double.infinity,
              height: 40,
              child: const Center(
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Search for vegetables and fruits..',
                  prefixIcon: Icon(Icons.search),
                )),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.greenAccent,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 20,
                    width: 120,
                    child: const Center(
                      child: Text(
                        "VEGETABLES",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 25,
                    width: 120,
                    child: const Center(
                      child: Text(
                        "FRUITS",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 25,
                    width: 120,
                    child: const Center(
                      child: Text(
                        "EXOTIC CUTS",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

      ],
    ),
    );
  }
}
