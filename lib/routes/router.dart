import 'package:flutter/material.dart';
import 'package:uzayRehberApp/view/home_view.dart';
import 'package:uzayRehberApp/view/planets_view.dart';
import 'package:uzayRehberApp/view/splash_view.dart';

class Router extends StatefulWidget {
  Router({Key key}) : super(key: key);

  @override
  _RouterState createState() => _RouterState();
}

class _RouterState extends State<Router> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashView(),
        '/home': (context) => HomeView(),
        '/planets': (context) => PlanetsView(),
      },
    );
  }
}
