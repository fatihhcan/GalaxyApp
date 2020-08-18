import 'package:flutter/material.dart';
import 'package:uzayRehberApp/components/style/color/color.dart';

class VenusView extends StatefulWidget {
  VenusView({Key key}) : super(key: key);

  @override
  _VenusViewState createState() => _VenusViewState();
}

class _VenusViewState extends State<VenusView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: fourthColor,
        body: Container(
          child: Column(
            children: [
              Card(
                //semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 5,

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  "asset/planets/Venus.png",
                  //   fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
