import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzayRehberApp/view/home_view.dart';
import 'package:uzayRehberApp/view/planets/mars_view.dart';
import 'package:uzayRehberApp/view/planets_view.dart';

import 'package:uzayRehberApp/view/splash_view.dart';

class Routes {
  static const String splash = "/";
  static const String home = "/home";
  static const String secondView = "/secondPage";
  static const String marsView = "/marsPage";
}

Widget routes(String name, Map<String, dynamic> arguments) {
  switch (name) {
    /*  case Routes.splash:
      return SplashView();
     case Routes.home:
      return HomeView();
    case Routes.secondView:
      return MarsView();*/
    case Routes.marsView:
      return MarsView();
    default:
      return MarsView(); //splash
  }
}

Route<dynamic> generateRoute(RouteSettings settings) {
  if (Platform.isIOS) {
    return CupertinoPageRoute(
      builder: (context) => routes(settings.name, settings.arguments),
    );
  } else {
    return MaterialPageRoute(
      builder: (context) => routes(settings.name, settings.arguments),
    );
  }
}
/**
 *  case Routes.splash:
      return SplashView();
    case Routes.home:
      return HomeView();
    case Routes.secondView:
      return PlanetsView();
    case Routes.marsView:
      return MarsView();
    default:
      return SplashView(); //splash
 */
