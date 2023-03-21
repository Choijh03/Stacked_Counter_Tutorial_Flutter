import 'package:flutter/material.dart';
import 'package:stack_tutorial_app/app/app.locator.dart';
import 'package:stack_tutorial_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CalculatorViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final String hi = 'hi';

  void goBack() {
    //_navigationService.back(result: hi);
    _navigationService.back();
  }
}
