import 'package:flutter/material.dart';

class Increment extends ChangeNotifier {
  int _cnt = 1;
  int get cnt => _cnt;

  void increment() {
    _cnt++;
    notifyListeners();
  }

  void decrement() {
    _cnt--;
    notifyListeners();
  }
}
