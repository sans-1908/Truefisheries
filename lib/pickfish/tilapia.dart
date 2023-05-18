import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tilapia extends StatelessWidget {
   
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
            image: DecorationImage(image: AssetImage('assets/categories/images/tilapia.jpeg'))
           ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Text("TILAPIA"
          ,style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 25),),
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: Text("Tilapia is an inexpensive, commonly consumed fish that is farmed all over the world.Tilapia are tropical fish found in the Nile and other warm rivers but can also live in saltwater. There are several species of commercially important tilapia with colors ranging from grey to bright red.Tilapia meat is good source of omega-3 eicosapentaenoicacid (EPA), docosapantaenoicacid (DPA) and docosahexaenoic acid (DHA) fatty acids. Studies suggest that those fatty acids, particularly DHA, play an important role in the growth and development of the nervous system, especially in infants and children."),
        )
      ],
    ),
    );
  }
}