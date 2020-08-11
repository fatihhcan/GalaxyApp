import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uzay Rehber App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Uzay Rehber APP'),
        ),
        body: Center(
          child: Container(
            child: Text('Welcome'),
          ),
        ),
      ),
    );
  }
}
