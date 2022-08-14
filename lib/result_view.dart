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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'YOUR BMI RESULT',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            if (bmiResult > 24.9) ...[
              const Text(
                'OVERWEIGHT',
                style: TextStyle(color: Colors.orange, fontSize: 20),
              ),
              Text(
                '${bmiResult.toStringAsFixed(1)}',
                style: const TextStyle(fontSize: 70, color: Colors.orange),
              ),
              const Text(
                'You should exercise more and follow a healthy diet.',
                style: TextStyle(color: Colors.white),
              )
            ] else if (bmiResult > 18.5 && bmiResult < 24.9) ...[
              const Text(
                'NORMAL',
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
              Text(
                '${bmiResult.toStringAsFixed(1)}',
                style: const TextStyle(fontSize: 70, color: Colors.green),
              ),
              const Text(
                'You are healthy :)',
                style: TextStyle(color: Colors.white),
              )
            ] else ...[
              const Text(
                'UNDERWEIGHT',
                style: TextStyle(color: Colors.orange, fontSize: 20),
              ),
              Text(
                '${bmiResult.toStringAsFixed(1)}',
                style: const TextStyle(fontSize: 70, color: Colors.orange),
              ),
              const Text(
                'You should eat more according to your body requirements',
                style: TextStyle(color: Colors.white),
              )
            ],
          ],
        ),
      ),
    );
  }
}
