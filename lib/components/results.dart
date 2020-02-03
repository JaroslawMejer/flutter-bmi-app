import 'package:flutter/material.dart';
import 'result_el.dart';

class Results extends ChangeNotifier {
  List<ResultElement> resultList = [];

  void addItem(String newItemDate, String newItemScore) {
    resultList.add(ResultElement(
      date: newItemDate,
      score: newItemScore,
    ));
    notifyListeners();
  }

  int get showLength {
    return resultList.length;
  }
}
