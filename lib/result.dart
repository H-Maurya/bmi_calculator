import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiTextResult,
      @required this.bmiNumResult,
      @required this.bmiComment});

  final String bmiTextResult;
  final String bmiNumResult;
  final String bmiComment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child:
                    Center(child: Text('Your Result', style: titleTextStyle)),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: activeCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(bmiTextResult.toUpperCase(), style: resultTextStyle),
                    Text(bmiNumResult, style: resultNumStyle),
                    Text(
                      bmiComment.toUpperCase(),
                      style: commentTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                height: bottomContainerHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: bottomCard,
                ),
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: buttonText,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
