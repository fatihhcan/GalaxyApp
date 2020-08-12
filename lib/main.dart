import 'package:flutter/material.dart';
import 'package:uzayRehberApp/routes/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galaxy App',
      initialRoute: Routes.home,
      onGenerateRoute: generateRoute,
    );
  }
}
