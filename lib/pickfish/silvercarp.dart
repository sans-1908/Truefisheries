import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Silvercarp extends StatelessWidget {
   
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
            image: DecorationImage(image: AssetImage('assets/categories/images/silvercarp.jpeg'))
           ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Text("Silver carp"
          ,style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 25),),
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: Text("It is also called as Flying Carp, mainly for it’s tendency to leap from the water when startled, and it can leap up to 10 ft into the air. It has long been cultivated in China, but a threatened species in it’s native habitat."),
        )
      ],
    ),
    );
  }
}