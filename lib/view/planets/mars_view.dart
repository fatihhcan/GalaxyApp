import 'package:flutter/material.dart';
import 'package:uzayRehberApp/components/style/color/color.dart';

class MarsView extends StatefulWidget {
  MarsView({Key key}) : super(key: key);

  @override
  _MarsViewState createState() => _MarsViewState();
}

class _MarsViewState extends State<MarsView> {
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
                  "asset/mars.png",
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
