import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({Key key}) : super(key: key);

  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  get pageHeight => MediaQuery.of(context).size.height;
  get pageWidth => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 11 / 6,
      child: Container(
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.asset(
            "asset/gezegenler.png",
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          //margin: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
