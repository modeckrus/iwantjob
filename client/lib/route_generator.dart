// import 'dart:js';

import 'package:client/service/error_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '/splash/view/splash_page.dart';

import 'page_route_transitions.dart';
import 'pages/home.dart';
import 'pages/test.dart';

class RouteGenerator {
  static Route<dynamic> onGenerateRouter(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return PageRouteTransition(builder: (context) {
          return errorHandler(context, HomePage());
        });
      case '/test':
        return PageRouteTransition(
            builder: (context) => errorHandler(context, TestPage()));
      case '/splash':
        return PageRouteTransition(
            builder: (context) => errorHandler(context, SplashPage()));
      default:
        return PageRouteTransition(builder: (context) {
          return errorHandler(context, SplashPage());
        });
    }
  }

  static Widget errorHandler(BuildContext context, Widget child) {
    // final messager = ScaffoldMessenger(child: child);
    // StreamBuilder<Error>(
    //   stream: ErrorService().stream,
    //   builder: (context, snap){
    //     return child;
    // });
    // // ErrorService().stream.asBroadcastStream(onListen: (sub) {
    // //   sub.onData((event) {
    // //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    // //       content: Text(event.toString()),
    // //     ));
    // //   });
    // // });
    // return messager;
    return child;
  }
}
