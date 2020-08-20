import 'package:flutter/material.dart';
import 'package:uzayRehberApp/components/cards/planets_card.dart';
import 'package:uzayRehberApp/view/planets/mars_view.dart';
import 'package:uzayRehberApp/view/planets/venus_view.dart';

class SecondRouter extends StatefulWidget {
  SecondRouter({Key key, int index}) : super(key: key);

  @override
  _SecondRouterState createState() => _SecondRouterState();
}

class _SecondRouterState extends State<SecondRouter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => PlanetsCard(),
        '/MarsView': (context) => MarsView(),
        '/VenusView': (context) => VenusView(),
      },
    );
  }
}
