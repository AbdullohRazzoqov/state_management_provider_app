import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int number = 0;
  
  void increase() {
    number += 1;
    notifyListeners();
    print("SON: $number");
  }
}
