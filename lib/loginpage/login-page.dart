import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // loginpagemjC (1:40)
        width: double.infinity,
        decoration: BoxDecoration (
          borderRadius: BorderRadius.circular(30*fem),
          gradient: LinearGradient (
            begin: Alignment(1, -0.962),
            end: Alignment(-0.571, 0.616),
            colors: <Color>[Color(0xff296a88), Color(0xff225878)],
            stops: <double>[0, 1],
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xdbb0b1b3),
              offset: Offset(0*fem, 4*fem),
              blurRadius: 15*fem,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // nativestatusbarcjp (1:41)
              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
              padding: EdgeInsets.fromLTRB(30*fem, 16*fem, 16.02*fem, 12*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                gradient: LinearGradient (
                  begin: Alignment(0.448, 0),
                  end: Alignment(-0.443, 1),
                  colors: <Color>[Color(0xff2b6785), Color(0xff2b6886)],
                  stops: <double>[0, 1],
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // 4ri (1:42)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 225*fem, 0*fem),
                    child: Text(
                      '9:41',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // mobilesignalyCz (1:43)
                    margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 5*fem, 0*fem),
                    width: 18*fem,
                    height: 10*fem,
                    child: Image.asset(
                      'assets/loginpage/images/mobile-signal.png',
                      width: 18*fem,
                      height: 10*fem,
                    ),
                  ),
                  Container(
                    // wifiGxn (1:49)
                    margin: EdgeInsets.fromLTRB(0*fem, 0.97*fem, 5.73*fem, 0*fem),
                    width: 15.27*fem,
                    height: 10.97*fem,
                    child: Image.asset(
                      'assets/loginpage/images/wifi.png',
                      width: 15.27*fem,
                      height: 10.97*fem,
                    ),
                  ),
                  Container(
                    // batteryBK4 (1:54)
                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                    width: 26.98*fem,
                    height: 13*fem,
                    child: Image.asset(
                      'assets/loginpage/images/battery.png',
                      width: 26.98*fem,
                      height: 13*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupojwstjG (XpJ2YNeEa9gqVThHy6oJWS)
              width: double.infinity,
              height: 479*fem,
              child: Stack(
                children: [
                  Positioned(
                    // screendesigns36N (1:59)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 452.86*fem,
                        height: 453.9*fem,
                        child: Image.asset(
                          'assets/loginpage/images/screen-designs.png',
                          width: 452.86*fem,
                          height: 453.9*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // welcomebackL5U (1:60)
                    left: 56.5*fem,
                    top: 34.5*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 256*fem,
                          height: 53*fem,
                          child: Text(
                            'Welcome Back!',
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
                    ),
                  ),
                  Positioned(
                    // undrawwelcomingrex0qo1Brn (1:61)
                    left: 87.0000076294*fem,
                    top: 155*fem,
                    child: Align(
                      child: SizedBox(
                        width: 198.23*fem,
                        height: 235*fem,
                        child: Image.asset(
                          'assets/loginpage/images/undrawwelcomingrex0qo-1.png',
                          width: 198.23*fem,
                          height: 235*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // inputE4N (1:104)
                    left: 23*fem,
                    top: 433*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10*fem, 11*fem, 10*fem, 15*fem),
                      width: 329*fem,
                      height: 46*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8*fem),
                      ),
                      child: Text(
                        'Email',
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 13*ffem,
                          height: 1.5*ffem/fem,
                          color: Color(0xbc000000),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupemuiUUW (XpJ2nNEvFF3XApW74WeMUi)
              padding: EdgeInsets.fromLTRB(24*fem, 15*fem, 22*fem, 32*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // inputnVC (I1:105;9:53)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 71*fem),
                    padding: EdgeInsets.fromLTRB(10*fem, 11*fem, 10*fem, 15*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(8*fem),
                    ),
                    child: Text(
                      'Password',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 13*ffem,
                        height: 1.5*ffem/fem,
                        color: Color(0xbc000000),
                      ),
                    ),
                  ),
                  Center(
                    // forgotpasswordclickhereRo4 (1:107)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 15*fem),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 11*ffem,
                            height: 1.5*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                          children: [
                            TextSpan(
                              text: 'Forgot Password?',
                            ),
                            TextSpan(
                              text: ' ',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 11*ffem,
                                height: 1.5*ffem/fem,
                                color: Color(0xff0865d3),
                              ),
                            ),
                            TextSpan(
                              text: 'Click Here',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 11*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5*ffem/fem,
                                color: Color(0xff0865d3),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // buttonDPU (1:103)
                    margin: EdgeInsets.fromLTRB(59*fem, 0*fem, 57.85*fem, 28*fem),
                    width: double.infinity,
                    height: 47*fem,
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
                        child: Text(
                          'Sign In',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 13.0555553436*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5*ffem/fem,
                            color: Color(0xf9ffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    // donthaveanaccountsignupqfk (1:106)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.5*ffem/fem,
                            color: Color(0xffeef6fa),
                          ),
                          children: [
                            TextSpan(
                              text: 'Don’t have an account?',
                            ),
                            TextSpan(
                              text: ' ',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w300,
                                height: 1.5*ffem/fem,
                                color: Color(0xff0865d3),
                              ),
                            ),
                            TextSpan(
                              text: 'Sign Up',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5*ffem/fem,
                                color: Color(0xff0865d3),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}