import 'package:flutter/material.dart';
import 'package:uzayRehberApp/components/style/color/color.dart';

class UranusView extends StatefulWidget {
  UranusView({
    Key key,
  }) : super(key: key);

  @override
  _UranusViewState createState() => _UranusViewState();
}

class _UranusViewState extends State<UranusView> {
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
                        "asset/planets/Uranus.png",
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
              Container(
                child: FutureBuilder<Question>(
                    future: getPost(),
                    builder: (context, snapshot) {
                      return Text('${snapshot.data.description}');
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
