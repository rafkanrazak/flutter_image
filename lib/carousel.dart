import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Carousellpage(),));
}
class Carousellpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('Carousel Slider'),),
     body: CarouselSlider(items:
     [
       Container(
         child: Image.asset('icon/gold.png'),),
       Container(
         child: Image.asset('icon/orange.png'),),
       Container(
         child: Image.asset('icon/red.png'),),
       Container(
         child: Image.asset('icon/white.png'),),
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
   );
  }

}
