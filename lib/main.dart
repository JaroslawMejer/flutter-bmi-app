import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/home_page.dart';
import 'package:provider/provider.dart';
import 'components/results.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Results(),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          textTheme: TextTheme(
            body1: TextStyle(fontFamily: 'Ubuntu'),
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}
