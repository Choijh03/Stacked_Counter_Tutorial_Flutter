import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'calculator_viewmodel.dart';

class CalculatorView extends StackedView<CalculatorViewModel> {
  const CalculatorView({
    Key? key,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CalculatorViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cal App Bar'),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Calculator',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              viewModel.hi,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  @override
  CalculatorViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CalculatorViewModel();
}
