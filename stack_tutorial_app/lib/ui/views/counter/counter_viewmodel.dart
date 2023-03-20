import 'package:stacked/stacked.dart';

//view model is where we write the logic and functionalities
class CounterViewModel extends BaseViewModel {
  int _counter = 0;
  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }
}
