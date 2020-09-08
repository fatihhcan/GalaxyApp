import 'package:flutter/material.dart';
import 'package:uzayRehberApp/components/style/color/color.dart';

class MercuryView extends StatefulWidget {
  MercuryView({
    Key key,
  }) : super(key: key);

  @override
  _MercuryViewState createState() => _MercuryViewState();
}

class _MercuryViewState extends State<MercuryView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: fourthColor,
        body: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                      child: Image.asset(
                        "asset/planets/Mercury.png",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/planets');
                      },
                      child: Icon(Icons.keyboard_arrow_left),
                      backgroundColor: fifthColor,
                      focusColor: thirdColor,
                      splashColor: thirdColor,
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
