import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Commoncarp extends StatelessWidget {
   
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
            image: DecorationImage(image: AssetImage('assets/categories/images/carp-2.jpg'))
           ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Text("COMMON CARP"
          ,style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 25),),
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: Text("Common carp fish is a fish of temperate area of Asia. This fish can be found in a large number in south China.But nowadays it is cultivated worldwide. They are freshwater fish species.Common carp fish is very suitable for farming with other species of carp fish in pond.Carp fish compose many B-complex vitamins such as niacin, pyridoxine (B-6). It is also a good source of vitamin-E, vitamin-B12, thiamin, and riboflavin.Further, it is a natural source of rich minerals including iodine, selenium,phosphorus, calcium, zinc, potassium, and magnesium."),
        )
      ],
    ),
    );
  }
}