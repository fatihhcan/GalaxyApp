import 'package:flutter/material.dart';
import 'package:uzayRehberApp/components/color.dart';
import 'package:uzayRehberApp/routes/router.dart';

class SplashView extends StatefulWidget {
  SplashView({Key key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  String assetImage = "asset/splash.gif";
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(
          seconds: 10,
        ), () {
      Navigator.pushNamed(context, Routes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(assetImage),
      ),
    );
  }
}
