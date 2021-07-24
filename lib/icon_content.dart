import 'package:flutter/material.dart';
import 'constants.dart';

class Cardcontent extends StatelessWidget {
  Cardcontent({@required this.ic, @required this.txt});
  final IconData ic;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          ic,
          size: 75,
        ),
        SizedBox(height: 15),
        Text(
          txt,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
