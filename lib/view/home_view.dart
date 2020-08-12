import 'package:flutter/material.dart';
import 'package:uzayRehberApp/components/cards/home_card.dart';
import 'package:uzayRehberApp/components/style/color/color.dart';
import 'package:uzayRehberApp/components/style/text/text.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  get pageHeight => MediaQuery.of(context).size.height;
  get pageWidth => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: oneColor,
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 93),
                child: Center(
                  child: galaxyAppTitleText,
                ),
              ),
              SizedBox(
                height: pageHeight * 0.09,
              ),
              HomeCard(),
              SizedBox(
                height: pageHeight * 0.09,
              ),
              buildGezegenlerVeCikisButonlari()
            ],
          ),
        ),
      ),
    );
  }

  Container buildGezegenlerVeCikisButonlari() {
    return Container(
      child: Column(
        children: [
          ButtonTheme(
            minWidth: pageWidth * 0.6,
            height: pageHeight * 0.09,
            child: RaisedButton(
              color: fifthColor,
              onPressed: () {},
              child: buttonGezegenlerText,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                  side: BorderSide(color: fifthColor)),
            ),
          ),
          SizedBox(
            height: pageHeight * 0.03,
          ),
          ButtonTheme(
            minWidth: pageWidth * 0.6,
            height: pageHeight * 0.09,
            child: RaisedButton(
              color: fourthColor,
              onPressed: () {},
              child: buttonCikisText,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                  side: BorderSide(color: fourthColor)),
            ),
          )
        ],
      ),
    );
  }
}
