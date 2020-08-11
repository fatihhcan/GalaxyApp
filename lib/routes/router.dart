import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzayRehberApp/view/home_view.dart';
import 'package:uzayRehberApp/view/splash_view.dart';

class Routes {
  static const String splash = "/";
  static const String home = "/home";
}

Widget routes(String name, Map<String, dynamic> arguments) {
  switch (name) {
    case Routes.splash:
      return SplashView();
    case Routes.home:
      return HomeView();
    default:
      return SplashView();
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
