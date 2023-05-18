import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/categories/category.dart';
import 'package:myapp/pickfish/rohu.dart';
import 'package:myapp/pickfish/silvercarp.dart';
import 'package:myapp/pickfish/tilapia.dart';
import 'package:myapp/utils.dart';

import 'catla.dart';
import 'commoncarp.dart';

class Pickfish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Container(
          // iphone11prox48etv (1:220)
          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            borderRadius: BorderRadius.circular(30*fem),
            gradient: LinearGradient (
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: <Color>[Color(0xff437c97), Color(0xff2e5878), Color(0xff5999b5), Color(0xff2e6b8c), Color(0xff547a97)],
              stops: <double>[0, 0.232, 0.441, 0.639, 1],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroup1ani3gA (XpJ5zMjLuvps4iK9WX1aNi)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 90*fem),
                width: 379*fem,
                height: 684*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // vectorXbL (1:221)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 379*fem,
                          height: 516*fem,
                          child: Image.asset(
                            'assets/pickfish/images/vector-bE6.png',
                            width: 379*fem,
                            height: 516*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // vector5pKY (1:234)
                      left: 307*fem,
                      top: 113*fem,
                      child: Align(
                        child: SizedBox(
                          width: 36*fem,
                          height: 14*fem,
                          child: Image.asset(
                            'assets/pickfish/images/vector-5-rQe.png',
                            width: 36*fem,
                            height: 14*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // vector6XUr (1:235)
                      left: 28*fem,
                      top: 347*fem,
                      child: Align(
                        child: SizedBox(
                          width: 22*fem,
                          height: 8*fem,
                          child: Image.asset(
                            'assets/pickfish/images/vector-6-viS.png',
                            width: 22*fem,
                            height: 8*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // barsstatusbariphonexonlightSri (1:238)
                      left: 33*fem,
                      top: 14.3299865723*fem,
                      child: Container(
                        width: 327.33*fem,
                        height: 18*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // timexKG (1:253)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 230.67*fem, 0*fem),
                              child: Text(
                                '9:41',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Roboto',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w900,
                                  height: 1.1725*ffem/fem,
                                  letterSpacing: -0.3000000119*fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              // cellularconnectionqP4 (1:247)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.03*fem, 0.66*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/pickfish/images/cellular-connection-Khp.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // wifijDY (1:243)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.03*fem, 1.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/pickfish/images/wifi-V2n.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // batteryDuQ (1:239)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.66*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/pickfish/images/battery-7Hg.png',
                                width: 24.33*fem,
                                height: 11.33*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // materialsymbolsarrowcircleleft (1:254)
                      left: 38*fem,
                      top: 48*fem,
                      child: Align(
                        child: SizedBox(
                          width: 20*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/pickfish/images/material-symbols-arrow-circle-left-outline-rounded.png',
                            width: 20*fem,
                            height: 20*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // pickyourfishoMp (1:256)
                      left: 90.5*fem,
                      top: 70*fem,
                      child: Align(
                        child: SizedBox(
                          width: 194*fem,
                          height: 44*fem,
                          child: Text(
                            'Pick your fish',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Sansita',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // vector16fev (1:257)
                      left: 39*fem,
                      top: 151*fem,
                      child: Align(
                        child: SizedBox(
                          width: 168*fem,
                          height: 255*fem,
                          child: Image.asset(
                            'assets/pickfish/images/vector-16.png',
                            width: 168*fem,
                            height: 255*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // vector17mhx (1:258)
                      left: 127*fem,
                      top: 430*fem,
                      child: Align(
                        child: SizedBox(
                          width: 209*fem,
                          height: 254*fem,
                          child: Image.asset(
                            'assets/pickfish/images/vector-17.png',
                            width: 209*fem,
                            height: 254*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse31UcN (1:259)
                      left: 74*fem,
                      top: 168*fem,
                      child: Align(
                        child: SizedBox(
                          width: 222*fem,
                          height: 474*fem,
                          child: Image.asset(
                            'assets/pickfish/images/ellipse-31.png',
                            width: 222*fem,
                            height: 474*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle9nd4 (1:260)
                      left: 74*fem,
                      top: 182*fem,
                      child: Align(
                        child: SizedBox(
                          width: 60*fem,
                          height: 60*fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20*fem),
                            child: Image.asset(
                              'assets/pickfish/images/rectangle-9.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle15Hpi (1:261)
                      left: 74*fem,
                      top: 376*fem,
                      child: Align(
                        child: SizedBox(
                          width: 60*fem,
                          height: 60*fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20*fem),
                            child: Image.asset(
                              'assets/pickfish/images/rectangle-15.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle16oo4 (1:262)
                      left: 74*fem,
                      top: 479*fem,
                      child: Align(
                        child: SizedBox(
                          width: 60*fem,
                          height: 60*fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20*fem),
                            child: Image.asset(
                              'assets/pickfish/images/rectangle-16.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle14WhU (1:263)
                      left: 75*fem,
                      top: 275*fem,
                      child: Align(
                        child: SizedBox(
                          width: 60*fem,
                          height: 60*fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20*fem),
                            child: Image.asset(
                              'assets/pickfish/images/rectangle-14.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle17dn6 (1:264)
                      left: 74*fem,
                      top: 582*fem,
                      child: Align(
                        child: SizedBox(
                          width: 60*fem,
                          height: 60*fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20*fem),
                            child: Image.asset(
                              'assets/pickfish/images/rectangle-17.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // catla9kS (1:265)
                      left: 174*fem,
                      top: 203*fem,
                      child: Align(
                        child: SizedBox(
                          width: 46*fem,
                          height: 18*fem,
                        ),
                      ),
                    ),
                     Container(
                padding: EdgeInsets.fromLTRB(174*fem,190*fem, 46*fem, 18*fem),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    elevation:0.5,
                    backgroundColor: Color.fromRGBO(46,107,140,1)
                  ),
                  onPressed: (() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  Commoncarp())
                    );
                  }),
                  child: Text("Common Carp",
                  style: TextStyle(fontSize: 15),),
                 ),
              ),
                
                    Positioned(
                      // tilapia3av (1:266)
                      left: 173*fem,
                      top: 291*fem,
                      child: Align(
                        child: SizedBox(
                          width: 58*fem,
                          height: 18*fem,
                        ),
                      ),
                    ),
                    Container(
                padding: EdgeInsets.fromLTRB(173*fem,280*fem, 58*fem, 18*fem),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    elevation:0.5,
                    backgroundColor: Color.fromRGBO(46,107,140,1)
                  ),
                  onPressed: (() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  Tilapia())
                    );
                  }), 
                  child: Text("Tilapia",
                  style: TextStyle(fontSize: 15),),
                 ),
              ),  
                    Positioned(
                      // rohu9tr (1:267)
                      left: 175*fem,
                      top: 396*fem,
                      child: Align(
                        child: SizedBox(
                          width: 43*fem,
                          height: 18*fem,
                          
                        ),
                      ),
                    ),
                    Container(
                padding: EdgeInsets.fromLTRB(175*fem,380*fem, 43*fem, 18*fem),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    elevation:0.5,
                    backgroundColor: Color.fromRGBO(46,107,140,1)
                  ),
                  onPressed: (() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  Rohu())
                    );
                  }),
                  child: Text("Rohu",
                  style: TextStyle(fontSize: 15),),
                 ),
              ),
                
                    Positioned(
                      // silvercrapTPk (1:268)
                      left: 174*fem,
                      top: 501*fem,
                      child: Align(
                        child: SizedBox(
                          width: 93*fem,
                          height: 18*fem,
                        ),
                      ),
                    ),
                    Container(
                padding: EdgeInsets.fromLTRB(174*fem,490*fem, 93*fem, 18*fem),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    elevation:0.5,
                    backgroundColor: Color.fromRGBO(46,107,140,1)
                  ),
                  onPressed: (() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  Silvercarp())
                    );
                  }),
                  child: Text("Silver Carp",
                  style: TextStyle(fontSize: 15),),
                 ),
              ),
                
                    Positioned(
                      // commoncrapNFp (1:269)
                      left: 173*fem,
                      top: 606*fem,
                      child: Align(
                        child: SizedBox(
                          width: 120*fem,
                          height: 18*fem,
                          
                        ),
                      ),
                    ),
                     Container(
                padding: EdgeInsets.fromLTRB(165*fem,580*fem, 100*fem, 20*fem),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    elevation:0.5,
                    backgroundColor: Color.fromRGBO(46,107,140,1)
                  ),
                  onPressed: (() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  Catla())
                    );
                  }),
                  child: Text("Catla",
                  style: TextStyle(fontSize: 15),),
                 ),
              ),
                  ],
                ),
              ),
             
            Container(
                child: ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                  ),
                  onPressed: (() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  Categories())
                    );
                  }),
                  child: Text("Back"),
                 ),
              ),
             
            ],
          ),
        ),
            ),
    );
  }
}