import 'package:flutter/material.dart';
import 'package:stack_tutorial_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

//view model is where we write the logic and functionalities
class CounterViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  int _counter = 0;
  int get counter => _counter;
  var textContorller = TextEditingController();
  String data = '';

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  Future calPage() async {
    final result = await _navigationService.navigateTo(
      Routes.calculatorView,
      arguments: CalculatorViewArguments(anything: 'answer'),
    );
  }

  void setText() {
    data = textContorller.text.toString();
    rebuildUi();
  }

  void reset() {
    textContorller.clear();
    rebuildUi();
  }
}
