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
          children: [
            const Text(
              'YOUR BMI RESULT',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                height: 3.5,
              ),
            ),
            if (bmiResult > 24.9) ...[
              Text(
                '${bmiResult.toStringAsFixed(1)}',
                style: const TextStyle(
                    fontSize: 90, color: Colors.orange, height: 2),
              ),
              const Text(
                'OVERWEIGHT',
                style:
                    TextStyle(color: Colors.orange, fontSize: 30, height: 1.7),
              ),
              const Text(
                'You should exercise more and follow a healthy diet.',
                style:
                    TextStyle(color: Colors.white, fontSize: 17, height: 2.5),
              )
            ] else if (bmiResult > 18.5 && bmiResult < 24.9) ...[
              Text(
                '${bmiResult.toStringAsFixed(1)}',
                style: const TextStyle(
                    fontSize: 90, color: Colors.green, height: 2),
              ),
              const Text(
                'NORMAL',
                style:
                    TextStyle(color: Colors.green, fontSize: 30, height: 1.7),
              ),
              const Text(
                'You are healthy :)',
                style:
                    TextStyle(color: Colors.white, fontSize: 20, height: 2.5),
              )
            ] else ...[
              Text(
                '${bmiResult.toStringAsFixed(1)}',
                style: const TextStyle(
                    fontSize: 90, color: Colors.orange, height: 2),
              ),
              const Text(
                'UNDERWEIGHT',
                style:
                    TextStyle(color: Colors.orange, fontSize: 30, height: 1.7),
              ),
              const Text(
                'You should eat more food that gives you nutrition',
                style:
                    TextStyle(color: Colors.white, fontSize: 17, height: 2.5),
              )
            ],
          ],
        ),
      ),
    );
  }
}
