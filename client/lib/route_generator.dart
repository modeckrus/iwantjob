// import 'dart:js';

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
          return HomePage();
        });
      case '/test':
        return PageRouteTransition(builder: (context) => TestPage());
      case '/splash':
        return PageRouteTransition(builder: (context) => SplashPage());
      default:
        return PageRouteTransition(builder: (context) {
          return SplashPage();
        });
    }
  }
}
