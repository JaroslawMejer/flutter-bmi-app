import 'package:flutter/material.dart';
import '../constants.dart';
import '../screens/input_page.dart';
import 'bottom_button.dart';

class MainTab extends StatelessWidget {
  MainTab();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'BMI',
                    style: kHomeText,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Calculator',
                    style: kHomeText,
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  BottomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InputPage(),
                        ),
                      );
                    },
                    buttonTitle: 'Start',
                    width: 150.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
