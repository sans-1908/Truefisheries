import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rohu extends StatelessWidget {
   
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
            image: DecorationImage(image: AssetImage('assets/categories/images/rohu.jpg'))
           ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Text("ROHU"
          ,style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 25),),
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: Text("Rohu fish is rich in omega-3 polyunsaturated fatty acids, which have been shown to reduce inflammation and potentially lower the risk of heart disease, cancer, and arthritis. Both white and oily fish are good sources of lean protein. Rohu fish contains fatty acids, but only in the liver, and in smaller quantities."),
        )
      ],
    ),
    );
  }
}