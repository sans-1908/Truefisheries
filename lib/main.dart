import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/home/home.dart';
// import 'package:myapp/loginpage/login-page.dart';
// import 'package:myapp/home1/home.dart';
// import 'package:myapp/categories/iphone-11-pro-x-41.dart';
// import 'package:myapp/pickfish/iphone-11-pro-x-48.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Scaffold(
		body: SingleChildScrollView(
			child: Scene(),
		),
		),
	);
	}
}
