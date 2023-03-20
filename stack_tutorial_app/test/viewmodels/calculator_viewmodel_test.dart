import 'package:flutter_test/flutter_test.dart';
import 'package:stack_tutorial_app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('CalculatorViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
