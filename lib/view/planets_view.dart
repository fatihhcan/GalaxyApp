import 'package:flutter/material.dart';
import 'package:uzayRehberApp/components/cards/planets_card.dart';
import 'package:uzayRehberApp/components/style/color/color.dart';
import 'package:uzayRehberApp/components/style/text/text.dart';

class PlanetsView extends StatefulWidget {
  PlanetsView({Key key}) : super(key: key);

  @override
  _PlanetsViewState createState() => _PlanetsViewState();
}

class _PlanetsViewState extends State<PlanetsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: buildAppBar(),
          backgroundColor: secondColor,
          body: buildCardList()),
    );
  }

  Container buildCardList() {
    return Container(
        child: Column(
      children: [
        Expanded(
          child: PlanetsCard(),
        )
      ],
    ));
  }

  AppBar buildAppBar() {
    return AppBar(backgroundColor: thirdColor, leading: buildBackButton());
  }

  IconButton buildBackButton() {
    return IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: sixthColor,
        ),
        onPressed: () {});
  }
}
