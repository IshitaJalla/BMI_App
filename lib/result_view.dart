import 'package:flutter/material.dart';
import 'package:bmi_testapp/calculation.dart';

class ResultView extends StatefulWidget {
  //const ResultView({Key? key}) : super(key: key);
  int height;
  int weight;
  ResultView({required this.height, required this.weight});
  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  Logic logic = Logic();
  double bmiResult = 0;
  @override
  void initState() {
    bmiResult =
        logic.calculateBMI(height: widget.height, weight: widget.weight);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'BMI RESULT',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              '${bmiResult.toStringAsFixed(1)}',
              style: TextStyle(fontSize: 40, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
