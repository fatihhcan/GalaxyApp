import 'package:flutter/material.dart';
import 'package:uzayRehberApp/view/planets/earth_view.dart';
import 'package:uzayRehberApp/view/planets/jupiter_view.dart';
import 'package:uzayRehberApp/view/planets/mars_view.dart';
import 'package:uzayRehberApp/view/planets/mercury_view.dart';
import 'package:uzayRehberApp/view/planets/moon_view.dart';
import 'package:uzayRehberApp/view/planets/neptune_view.dart';
import 'package:uzayRehberApp/view/planets/pluto_view.dart';
import 'package:uzayRehberApp/view/planets/saturn_view.dart';
import 'package:uzayRehberApp/view/planets/uranus_view.dart';
import 'package:uzayRehberApp/view/planets/venus_view.dart';

class PlanetsCard extends StatefulWidget {
  PlanetsCard({
    Key key,
  }) : super(key: key);

  @override
  _PlanetsCardState createState() => _PlanetsCardState();
}

class _PlanetsCardState extends State<PlanetsCard> {
  List<String> images = [
    "asset/planets/Mars.png",
    "asset/planets/Earth.png",
    "asset/planets/Jupiter.png",
    "asset/planets/Mercury.png",
    "asset/planets/Moon.png",
    "asset/planets/Neptune.png",
    "asset/planets/Pluto.png",
    "asset/planets/Saturn.png",
    "asset/planets/Uranus.png",
    "asset/planets/Venus.png",
  ];

  List<Widget> pages = <Widget>[
    MarsView(),
    EarthView(),
    JupiterView(),
    MercuryView(),
    MoonView(),
    NeptuneView(),
    PlutoView(),
    SaturnView(),
    UranusView(),
    VenusView(),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pages[index]),
              );
            },
            child: Card(
              //semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 5,
              margin: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset(images[index]
                  //   fit: BoxFit.fill,
                  ),
            ),
          );
        }));
  }
}
