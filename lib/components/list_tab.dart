import 'package:flutter/material.dart';
import '../constants.dart';
import 'result_el.dart';
import 'results.dart';
import 'package:provider/provider.dart';

Results newResults = Results();

class ListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Your Results',
            textAlign: TextAlign.center,
            style: kHomeText,
          ),
          Consumer<Results>(
            builder: (context, Results, child) {
              if (Results.resultList.length > 0) {
                return ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ResultElement(
                      date: Results.resultList[index].date,
                      score: Results.resultList[index].score,
                    );
                  },
                  itemCount: Results.resultList.length,
                );
              } else {
                return Text(
                  'There is no results',
                  textAlign: TextAlign.center,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
