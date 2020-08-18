import 'package:flutter/material.dart';
import 'package:uzayRehberApp/view/planets/mars_view.dart';
import 'package:uzayRehberApp/view/planets/venus_view.dart';

class PlanetsCard extends StatefulWidget {
  PlanetsCard({Key key}) : super(key: key);

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
  int _currentPageIndex = 0;
  Widget get _page {
    switch (_currentPageIndex) {
      case 0:
        return MarsView();
        break;
      case 1:
        return VenusView();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentPageIndex = index;
              });
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
