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
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: viewModel.goBack,
              color: Colors.amber,
              child: Text('go back to screen before'),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                viewModel.showbackdata();
              },
              color: Colors.amber,
              child: Text('show back data'),
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
