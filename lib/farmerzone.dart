// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: vegapp(),));
}

class vegapp extends StatefulWidget {
  const vegapp({super.key});

  @override
  State<vegapp> createState() => _vegappState();
}

class _vegappState extends State<vegapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('FARM FRESH ZONE'),
            backgroundColor: Colors.green,
            actions: [
              Icon(Icons.location_on),
              Padding(
                padding: const EdgeInsets.only(top: 19.0, left: 5, right: 5),
                child: Text('Kochi/Kerala'),
              )
            ],
            bottom: AppBar(
              backgroundColor: Colors.green,
              title: Container(
                color: Colors.white,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search for vegetables and fruits..',
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 20,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('VEGETABLES')),
                    ),
                    Container(
                      height: 20,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('FRUITS')),
                    ),
                    Container(
                      height: 20,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('EXOTIC CUTS')),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //
                CarouselSlider(items:
                [
                  Container(
                    child: Image.asset('icon/fruits1.png'),),
                  Container(
                    child: Image.asset('icon/fruits.png'),),
                  Container(
                    child: Image.asset('icon/fruitss.png'),),
                  Container(
                    child: Image.asset('icon/fruit.png'),),
                ],

                  options: CarouselOptions(
                      height: 200,
                      enlargeCenterPage: true,
                      aspectRatio: 16/9,
                      autoPlay: true,
                      autoPlayCurve: Curves.easeInCirc,
                      autoPlayAnimationDuration: Duration(microseconds: 1000),
                      enableInfiniteScroll: true,
                      viewportFraction: 4),

                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Container(
                    height: 50,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.timer), Text('30 min Policy')],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.transcribe_outlined),
                            Text('Tracabality')
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.home), Text('Local Surrounding')],
                        )
                      ],
                    ),
                  ),
                ),
                // Container(
                //   child: Row(children: [
                //     Padding(
                //       padding: const EdgeInsets.only(right: 170, top: 15),
                //       child: Text(
                //         'Shop By Category',
                //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                //       ),
                //     )
                //   ]),
                // ),
              ])),
          SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Shop By Category',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                veggrid(),
              ]))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.green,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.green,
            ),
            label: 'Cart'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.green,
            ),
            label: 'Account')
      ]),
    );
  }
}

class veggrid extends StatelessWidget {
  List<String> images = [
    "https://m.timesofindia.com/photo/90265818/90265818.jpg",
    "https://m.timesofindia.com/photo/90265818/90265818.jpg",
    "https://m.timesofindia.com/photo/90265818/90265818.jpg",
    "https://m.timesofindia.com/photo/90265818/90265818.jpg",
    "https://m.timesofindia.com/photo/90265818/90265818.jpg",
    "https://m.timesofindia.com/photo/90265818/90265818.jpg"
  ];
  List<String> names = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh cut",
    "Nutrition Charged",
    "Packed Flavours"
  ];
  // const veggrid({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 3, mainAxisSpacing: 3),
        itemCount: images.length,
        itemBuilder: (BuildContext , int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 90,
                // width: 120,
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(images[index])),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(names[index]),
            ],
          );
        });
  }
}










//         SliverList(
//           delegate: SliverChildListDelegate(
//             [
//               const SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         color: Colors.greenAccent,
//                       ),
//                       borderRadius: const BorderRadius.all(Radius.circular(20)),
//                     ),
//                     height: 20,
//                     width: 120,
//                     child: const Center(
//                       child: Text(
//                         "VEGETABLES",
//                         style: TextStyle(color: Colors.green),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.greenAccent,
//                         ),
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(20))),
//                     height: 25,
//                     width: 120,
//                     child: const Center(
//                       child: Text(
//                         "FRUITS",
//                         style: TextStyle(color: Colors.green),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.greenAccent,
//                         ),
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(20))),
//                     height: 25,
//                     width: 120,
//                     child: const Center(
//                       child: Text(
//                         "EXOTIC CUTS",
//                         style: TextStyle(color: Colors.green),
//                       ),
//                     ),
//                   ),
//
//                 ],
//               ),
//             ],
//           ),
//         ),
//
//       ],
//     ),
//     );
//   }
// }
