import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/pickfish/pick_fish.dart';
import 'package:myapp/utils.dart';
import '../home1/home1.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Container(
          // iphone11prox413Hg (1:166)
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xff437c97),
            borderRadius: BorderRadius.circular(30*fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupwhenMJN (XpJ4p9C1W6xn8b8SRtWheN)
                padding: EdgeInsets.fromLTRB(33*fem, 0*fem, 14.67*fem, 23.67*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Opacity(
                      // group17Udt (1:167)
                      opacity: 0.75,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(71*fem, 0*fem, 88.33*fem, 42.33*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            
                            Container(
                              // logoH5Y (1:168)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                              width: 30*fem,
                              height: 30*fem,
                              child: Image.asset(
                                'assets/categories/images/logo-TWN.png',
                                width: 30*fem,
                                height: 30*fem,
                              ),
                            ),
                            Container(
                              // moono3t (1:177)
                              margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                              child: Text(
                                'Moon',
                                style: SafeGoogleFont (
                                  'Airbnb Cereal App',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2575*ffem/fem,
                                  letterSpacing: 3.84*fem,
                                  color: Color(0xff8e97fd),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // barsstatusbariphonexonlighttb8 (1:189)
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // cellularconnection7Tt (1:198)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.03*fem, 0.66*fem),
                            width: 17*fem,
                            height: 10.67*fem,
                            child: Image.asset(
                              'assets/categories/images/cellular-connection.png',
                              width: 17*fem,
                              height: 10.67*fem,
                            ),
                          ),
                          Container(
                            // wifip7Q (1:194)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.03*fem, 1.03*fem),
                            width: 15.27*fem,
                            height: 10.97*fem,
                            child: Image.asset(
                              'assets/categories/images/wifi-96v.png',
                              width: 15.27*fem,
                              height: 10.97*fem,
                            ),
                          ),
                          Container(
                            // batteryLLe (1:190)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.66*fem),
                            width: 24.33*fem,
                            height: 11.33*fem,
                            child: Image.asset(
                              'assets/categories/images/battery-Uaz.png',
                              width: 24.33*fem,
                              height: 11.33*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupyrhyEwp (XpJ4JEtAdN6i8Nmp1YyRHY)
                width: double.infinity,
                height: 756*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // ellipse13mRx (1:179)
                      left: 0*fem,
                      top: 31*fem,
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur (
                          sigmaX: 10*fem,
                          sigmaY: 10*fem,
                        ),
                        child: Align(
                          child: SizedBox(
                            width: 492*fem,
                            height: 492*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(246*fem),
                                color: Color(0xff244769),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse12pv2 (1:180)
                      left: 0*fem,
                      top: 66*fem,
                      child: Align(
                        child: SizedBox(
                          width: 422*fem,
                          height: 422*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(211*fem),
                              color: Color(0xff9aa2fd),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse11YLE (1:181)
                      left: 11*fem,
                      top: 100*fem,
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur (
                          sigmaX: 2*fem,
                          sigmaY: 2*fem,
                        ),
                        child: Align(
                          child: SizedBox(
                            width: 354*fem,
                            height: 354*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(177*fem),
                                color: Color(0xff9aa2fd),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // vector5326 (1:182)
                      left: 307*fem,
                      top: 57*fem,
                      child: Align(
                        child: SizedBox(
                          width: 36*fem,
                          height: 14*fem,
                          child: Image.asset(
                            'assets/categories/images/vector-5.png',
                            width: 36*fem,
                            height: 14*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // vector6jvW (1:183)
                      left: 28*fem,
                      top: 291*fem,
                      child: Align(
                        child: SizedBox(
                          width: 22*fem,
                          height: 8*fem,
                          child: Image.asset(
                            'assets/categories/images/vector-6.png',
                            width: 22*fem,
                            height: 8*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse10s18 (1:184)
                      left: 48*fem,
                      top: 140*fem,
                      child: Align(
                        child: SizedBox(
                          width: 284*fem,
                          height: 284*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(142*fem),
                              color: Color(0xff5999b4),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle211BXc (1:185)
                      left: 0*fem,
                      top: 354*fem,
                      child: Align(
                        child: SizedBox(
                          width: 416*fem,
                          height: 402*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              color: Color(0xff2e6b8c),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // line1i1k (1:186)
                      left: 117*fem,
                      top: 718*fem,
                      child: Align(
                        child: SizedBox(
                          width: 143*fem,
                          height: 5*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // vectorqMG (1:188)
                      left: 0*fem,
                      top: 334*fem,
                      child: Align(
                        child: SizedBox(
                          width: 430*fem,
                          height: 33*fem,
                          child: Image.asset(
                            'assets/categories/images/vector.png',
                            width: 430*fem,
                            height: 33*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // frame3kj8 (1:205)
                      left: 28*fem,
                      top: 0*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(49.5*fem, 9*fem, 49.5*fem, 9*fem),
                        width: 322*fem,
                        height: 334*fem,
                        decoration: BoxDecoration (
                          image: DecorationImage (
                            fit: BoxFit.cover,
                            image: AssetImage (
                              'assets/categories/images/frame-3-bg.png',
                            ),
                          ),
                        ),
                        child: Text(
                          'Choose your category',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Josefin Sans',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.35*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle2624oxJ (1:207)
                      left: 59*fem,
                      top: 367*fem,
                      child: Align(
                        child: SizedBox(
                          width: 90*fem,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(40*fem),
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffb2dce2),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle35up (1:208)
                      left: 69*fem,
                      top: 387*fem,
                      child: Align(
                        child: SizedBox(
                          width: 70*fem,
                          height: 50*fem,
                          child: Image.asset(
                            'assets/categories/images/health.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle2626p6i (1:209)
                      left: 59*fem,
                      top: 536*fem,
                      child: Align(
                        child: SizedBox(
                          width: 90*fem,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(40*fem),
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffb2dce2),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle2625hwC (1:210)
                      left: 233*fem,
                      top: 367*fem,
                      child: Align(
                        child: SizedBox(
                          width: 90*fem,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(40*fem),
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffb1dce2),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle2BrN (1:211)
                      left: 243*fem,
                      top: 387*fem,
                      child: Align(
                        child: SizedBox(
                          width: 70*fem,
                          height: 50*fem,
                          child: Image.asset(
                            'assets/categories/images/pond.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle2627ibQ (1:212)
                      left: 235*fem,
                      top: 536*fem,
                      child: Align(
                        child: SizedBox(
                          width: 90*fem,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(40*fem),
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffb2dce2),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle1REv (1:213)
                      left: 69*fem,
                      top: 555*fem,
                      child: Align(
                        child: SizedBox(
                          width: 70*fem,
                          height: 50*fem,
                          child: Image.asset(
                            'assets/categories/images/fish.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle4k2J (1:214)
                      left: 245*fem,
                      top: 555*fem,
                      child: Align(
                        child: SizedBox(
                          width: 70*fem,
                          height: 50*fem,
                          child: Image.asset(
                            'assets/categories/images/comm.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // healthGWS (1:215)
                      left: 73*fem,
                      top: 471*fem,
                      child: Align(
                        child: SizedBox(
                          width: 62*fem,
                          height: 20*fem,
                        ),
                      ),
                    ),
                    Container(
                padding: EdgeInsets.fromLTRB(73*fem,471*fem, 62*fem, 20*fem),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation:1.0,
                    backgroundColor: Color.fromRGBO(46,107,140,1)
                  ),
                  onPressed: (() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  Scene1())
                    );
                  }),
                  child: Text("Health",
                  style: TextStyle(fontSize: 12),),
                 ),
              ),
                    Positioned(
                      left: 73*fem,
                      top: 643*fem,
                      child: Align(
                        child: SizedBox(
                          width: 55*fem,
                          height: 20*fem,
                        ),
                      ),
                    ),
                     Container(
                padding: EdgeInsets.fromLTRB(73*fem, 643*fem, 55*fem, 20*fem),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation:1.0,
                    backgroundColor: Color.fromRGBO(46,107,140,1)
                  ),
                  onPressed: (() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  Pickfish())
                    );
                  }),
                  child: Text("Fishes"),
                 ),
              ),
                    Positioned(
                      // pondsUcW (1:217)
                      left: 251*fem,
                      top: 471*fem,
                      child: Align(
                        child: SizedBox(
                          width: 54*fem,
                          height: 20*fem,
                        ),
                      ),
                    ),
                    Container(
                padding: EdgeInsets.fromLTRB(251*fem, 471*fem, 54*fem, 20*fem),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation:1.0,
                    backgroundColor: Color.fromRGBO(46,107,140,1)
                  ),
                  onPressed: (() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  Scene1())
                    );
                  }),
                  child: Text("Ponds"),
                 ),
              ),
                    Positioned(
                      // communityBG2 (1:218)
                      left: 235*fem,
                      top: 643*fem,
                      child: Align(
                        child: SizedBox(
                          width: 102*fem,
                          height: 20*fem,
                        ),
                      ),
                    ),
                     Container(
                padding: EdgeInsets.fromLTRB(235*fem,643*fem, 54*fem, 20*fem),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation:1.0,
                    backgroundColor: Color.fromRGBO(46,107,140,1)
                  ),
                  onPressed: (() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  Scene1())
                    );
                  }),
                  child: Text("Community",
                  style: TextStyle(fontSize: 12),),
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
                  Scene1())
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