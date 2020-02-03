import '../constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import 'input_page.dart';
import '../components/bottom_button.dart';
import '../components/list_tab.dart';
import '../components/results.dart';
import 'package:intl/intl.dart';

Results listOfResults = Results();

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  static DateTime now = DateTime.now();
  String formattedDate = DateFormat('dd.MM.yyyy').format(now);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: resultText == 'Normal'
                        ? kResultTextStyle
                        : kResultTextStyleBad,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: BottomButton(
                  onTap: () {
                    Provider.of<Results>(context, listen: false).addItem(
                      formattedDate,
                      resultText.toUpperCase(),
                    );
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  buttonTitle: 'SAVE IT',
                ),
              ),
              Expanded(
                child: BottomButton(
                  onTap: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  buttonTitle: 'TRY AGAIN',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
