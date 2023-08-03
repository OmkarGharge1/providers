import 'package:flutter/material.dart';

class HomeScreenProvider with ChangeNotifier {
  bool? isEligible;
  String Eligibility = '';

  void checkElgibility(int age) {
    if (age >= 18) {
      isEligible = true;
      Eligibility = 'you are eligible';
      notifyListeners();
    } else {
      isEligible = false;
      Eligibility = 'you are not eligible';
      notifyListeners();
    }
  }
}
