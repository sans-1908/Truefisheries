import 'package:flutter/material.dart';

pushNewScreen(
  BuildContext context, {
  required Widget screen,
  // final PageTransitionAnimation pageTransitionAnimation =
  //     PageTransitionAnimation.cupertino,
}) {
  return Navigator.of(context).push(PageRouteBuilder(
    pageBuilder: (_, __, ___) => screen,
    transitionDuration: const Duration(milliseconds: 250),
    reverseTransitionDuration: const Duration(milliseconds: 250),
    transitionsBuilder: (_, a, __, c) => SlideTransition(
        position: Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
            .animate(a),
        child: c),
  ));
}
