import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Catla extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      backgroundColor:Color.fromRGBO(46,107,140,1),  
    appBar: AppBar(   
     backgroundColor: Color.fromRGBO(10,9,95,1),
    title: Text("About the fish",
    ),   
    ),   
    body: 
    Column(
      children: [
        Container(
          alignment:Alignment.center,
          padding: EdgeInsets.all(20),
           height: 300,
           decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/categories/images/catla.jpeg'))
           ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Text("Catla"
          ,style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 25),),
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: Text("catla Known as a great Indian carp, Catla fish is one of the well-known freshwater fish found in the rivers and lakes of India.Available throughout the year, it is one of the popular fish varieties found in the Indian fish market. Catla fish recipes are one of the tastiest fish preparations that can be made easily in the comfort of your home. It has Omega 6 to Omega 3fatty acids.It contains Niacin or Vitamin B3 as well.The Omega-3 fatty acids are known to help keep our eyes healthy."),
        )
      ],
    ),
    );
  }
}