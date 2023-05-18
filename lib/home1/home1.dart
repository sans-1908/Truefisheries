import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/categories/category.dart';
import 'package:myapp/utils.dart';

class Scene1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Container(
          // home3dx (1:271)
          padding: EdgeInsets.fromLTRB(33*fem, 14.33*fem, 14.67*fem, 37*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xbf2e4e74),
            borderRadius: BorderRadius.circular(30*fem),
            image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage (
                'assets/home1/images/bg.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // barsstatusbariphonexonlightJJz (1:274)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 41.17*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timep2S (1:289)
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
                      // cellularconnectionuJn (1:283)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.03*fem, 0.66*fem),
                      width: 17*fem,
                      height: 10.67*fem,
                      child: Image.asset(
                        'assets/home1/images/cellular-connection-LhC.png',
                        width: 17*fem,
                        height: 10.67*fem,
                      ),
                    ),
                    Container(
                      // wifiD4a (1:279)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.03*fem, 1.03*fem),
                      width: 15.27*fem,
                      height: 10.97*fem,
                      child: Image.asset(
                        'assets/home1/images/wifi-vzA.png',
                        width: 15.27*fem,
                        height: 10.97*fem,
                      ),
                    ),
                    Container(
                      // batteryKdQ (1:275)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.66*fem),
                      width: 24.33*fem,
                      height: 11.33*fem,
                      child: Image.asset(
                        'assets/home1/images/battery-mPU.png',
                        width: 24.33*fem,
                        height: 11.33*fem,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                // createaccountq5x (1:290)
                child: Container(
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.33*fem, 17.5*fem),
                  child: Text(
                    'Create Account',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'DM Serif Display',
                      fontSize: 38*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.37*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              Container(
                // undrawpersonalfilere5joy28ar (1:341)
                margin: EdgeInsets.fromLTRB(10.67*fem, 0*fem, 0*fem, 32*fem),
                width: 200*fem,
                height: 178*fem,
                child: Image.asset(
                  'assets/home1/images/undrawpersonalfilere5joy-2.png',
                  width: 200*fem,
                  height: 178*fem,
                ),
              ),
              Container(
                // inputbUS (1:295)
                margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 22.33*fem, 16*fem),
                padding: EdgeInsets.fromLTRB(19.29*fem, 17*fem, 15.31*fem, 17*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  color: Color(0xfffff9eb),
                  borderRadius: BorderRadius.circular(8*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // checkbMx (I1:295;218:168)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.78*fem),
                      width: 13.63*fem,
                      height: 8.5*fem,
                      child: Image.asset(
                        'assets/home1/images/check.png',
                        width: 13.63*fem,
                        height: 8.5*fem,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // group68017bC (1:299)
                margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 22.33*fem, 16*fem),
                padding: EdgeInsets.fromLTRB(19.29*fem, 18.98*fem, 15.31*fem, 15.02*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  color: Color(0xfffff9eb),
                  borderRadius: BorderRadius.circular(8*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // imshuvo97gmailcompEi (1:301)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 46.77*fem, 0*fem),
                      child: Text(
                        'imshuvo97@gmail.com',
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.0809999704*ffem/fem,
                          letterSpacing: 0.8*fem,
                          color: Color(0xff3f414e),
                        ),
                      ),
                    ),
                    Container(
                      // vector10iL6 (1:302)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.9*fem),
                      width: 13.63*fem,
                      height: 8.5*fem,
                      child: Image.asset(
                        'assets/home1/images/vector-10.png',
                        width: 13.63*fem,
                        height: 8.5*fem,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // passwordinputEZL (1:316)
                margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 22.33*fem, 16*fem),
                padding: EdgeInsets.fromLTRB(19.29*fem, 23.21*fem, 13.54*fem, 17.73*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  color: Color(0xfffff9eb),
                  borderRadius: BorderRadius.circular(8*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // elipses88v (I1:316;218:119)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 163.8*fem, 4.64*fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse22FUS (I1:316;218:120)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.89*fem, 0*fem),
                            width: 6.67*fem,
                            height: 6.42*fem,
                            child: Image.asset(
                              'assets/home1/images/ellipse-22.png',
                              width: 6.67*fem,
                              height: 6.42*fem,
                            ),
                          ),
                          Container(
                            // ellipse23mBt (I1:316;218:123)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.89*fem, 0*fem),
                            width: 6.67*fem,
                            height: 6.42*fem,
                            child: Image.asset(
                              'assets/home1/images/ellipse-23.png',
                              width: 6.67*fem,
                              height: 6.42*fem,
                            ),
                          ),
                          Container(
                            // ellipse24fo4 (I1:316;218:126)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.89*fem, 0*fem),
                            width: 6.67*fem,
                            height: 6.42*fem,
                            child: Image.asset(
                              'assets/home1/images/ellipse-24.png',
                              width: 6.67*fem,
                              height: 6.42*fem,
                            ),
                          ),
                          Container(
                            // ellipse25bRp (I1:316;218:121)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.89*fem, 0*fem),
                            width: 6.67*fem,
                            height: 6.42*fem,
                            child: Image.asset(
                              'assets/home1/images/ellipse-25.png',
                              width: 6.67*fem,
                              height: 6.42*fem,
                            ),
                          ),
                          Container(
                            // ellipse26K6v (I1:316;218:124)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.89*fem, 0*fem),
                            width: 6.67*fem,
                            height: 6.42*fem,
                            child: Image.asset(
                              'assets/home1/images/ellipse-26.png',
                              width: 6.67*fem,
                              height: 6.42*fem,
                            ),
                          ),
                          Container(
                            // ellipse27ddQ (I1:316;218:127)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.89*fem, 0*fem),
                            width: 6.67*fem,
                            height: 6.42*fem,
                            child: Image.asset(
                              'assets/home1/images/ellipse-27.png',
                              width: 6.67*fem,
                              height: 6.42*fem,
                            ),
                          ),
                          Container(
                            // ellipse28kT8 (I1:316;218:122)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.89*fem, 0*fem),
                            width: 6.67*fem,
                            height: 6.42*fem,
                            child: Image.asset(
                              'assets/home1/images/ellipse-28.png',
                              width: 6.67*fem,
                              height: 6.42*fem,
                            ),
                          ),
                          Container(
                            // ellipse29GgN (I1:316;218:125)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.89*fem, 0*fem),
                            width: 6.67*fem,
                            height: 6.42*fem,
                            child: Image.asset(
                              'assets/home1/images/ellipse-29.png',
                              width: 6.67*fem,
                              height: 6.42*fem,
                            ),
                          ),
                          Container(
                            // ellipse30bie (I1:316;218:128)
                            width: 6.67*fem,
                            height: 6.42*fem,
                            child: Image.asset(
                              'assets/home1/images/ellipse-30.png',
                              width: 6.67*fem,
                              height: 6.42*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              Container(
                // buttonk1C (1:329)
                margin: EdgeInsets.fromLTRB(63*fem, 0*fem, 84.33*fem, 100*fem),
                width: double.infinity,
                height: 37*fem,
                decoration: BoxDecoration (
                  color: Color(0xff73d8e7),
                  borderRadius: BorderRadius.circular(13.0555553436*fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0*fem, 4*fem),
                      blurRadius: 2*fem,
                    ),
                  ],
                ),
                
                child: Center(
                  child: Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                    elevation:0.0,
                    backgroundColor: Color.fromRGBO(115,216,231,1)
                  ),
                  onPressed: (() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  Categories())
                    );
                  }),
                  child: Text("Login"),
                 ),) 
                  ),
                ),
            ],
          ),
        ),
            ),
    );
  }
}
