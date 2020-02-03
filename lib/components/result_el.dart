import 'package:flutter/material.dart';
import '../constants.dart';

class ResultElement extends StatelessWidget {
  ResultElement({this.date, this.score});

  final String date;
  final String score;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(date),
              Text(
                score,
                style: score == 'NORMAL' ? kResultListGood : kResultListBad,
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.white, width: 1.0),
            bottom: BorderSide(color: Colors.white, width: 1.0),
          ),
        ),
      ),
    );
  }
}
