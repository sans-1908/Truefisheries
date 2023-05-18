import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/home1/home1.dart';
import 'package:myapp/utils.dart';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Container(
          // homeYRt (1:3)
          padding: EdgeInsets.fromLTRB(33*fem, 14.33*fem, 14.67*fem, 409*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xbf2e4e74),
            borderRadius: BorderRadius.circular(30*fem),
            image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage (
                'assets/home/images/bg-xSz.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // barsstatusbariphonexonlightupA (1:7)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 320.67*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timecCn (1:22)
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
                      // cellularconnectionShc (1:16)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.03*fem, 0.66*fem),
                      width: 17*fem,
                      height: 10.67*fem,
                      child: Image.asset(
                        'assets/home/images/cellular-connection-u6e.png',
                        width: 17*fem,
                        height: 10.67*fem,
                      ),
                    ),
                    Container(
                      // wifiLHC (1:12)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.03*fem, 1.03*fem),
                      width: 15.27*fem,
                      height: 10.97*fem,
                      child: Image.asset(
                        'assets/home/images/wifi-A9t.png',
                        width: 15.27*fem,
                        height: 10.97*fem,
                      ),
                    ),
                    Container(
                      // batteryqUr (1:8)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.66*fem),
                      width: 24.33*fem,
                      height: 11.33*fem,
                      child: Image.asset(
                        'assets/home/images/battery-23Y.png',
                        width: 24.33*fem,
                        height: 11.33*fem,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                 style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color.fromRGBO(115, 216, 231, 1)),
                  ),
                  onPressed: (() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  Scene1())
                    );
                  }),
                  child: Text("Start the app",
                  style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold),),
                 ),
              ),
              Container(
                // truefisheriesswL (1:6)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.33*fem, 0*fem),
                child: Text(
                  'TrueFisheries',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Josefin Sans',
                    fontSize: 50*ffem,
                    fontWeight: FontWeight.w500,
                    height: 1*ffem/fem,
                    letterSpacing: -0.3000000119*fem,
                    fontStyle: FontStyle.italic,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ],
          ),
        ),
            ),
    );

  }
  
}