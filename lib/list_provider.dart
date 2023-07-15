import 'package:flutter/material.dart';

class NumberListProvider extends ChangeNotifier {
  List<int> numbers = [1, 2, 3, 4];
  add() {
    numbers.add(numbers.last++);
    notifyListeners();
  }
}
