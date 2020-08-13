import 'package:flutter/material.dart';

class PlanetsCard extends StatefulWidget {
  PlanetsCard({Key key}) : super(key: key);

  @override
  _PlanetsCardState createState() => _PlanetsCardState();
}

class _PlanetsCardState extends State<PlanetsCard> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return GestureDetector(
            onTap: () {},
            child: Card(
              //semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 5,

              margin: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                "asset/mars.png",
                //   fit: BoxFit.fill,
              ),
            ),
          );
        }));
  }
}
