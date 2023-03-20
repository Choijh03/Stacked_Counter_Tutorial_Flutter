import 'package:flutter/material.dart';
import 'package:stack_tutorial_app/ui/views/calculator/calculator_view.dart';
import 'package:stacked/stacked.dart';
import 'counter_viewmodel.dart';

//this is ui for counter
class CounterView extends StackedView<CounterViewModel> {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, CounterViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.incrementCounter,
        child: Icon(
          Icons.add,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                viewModel.counter.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            MaterialButton(
              onPressed: viewModel.CalPage,
              color: Colors.amber,
              child: Text('Go to Cal'),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                viewModel.SetText();
                viewModel.reset();
              },
              color: Colors.amber,
              child: Text('Set text field'),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: viewModel.reset,
              color: Colors.amber,
              child: Text('reset textfield'),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: viewModel.textContorller,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter something',
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              viewModel.data,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  @override
  CounterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CounterViewModel();
}
