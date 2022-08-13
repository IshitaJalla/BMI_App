import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'enum_file.dart';

class InputDetails extends StatefulWidget {
  const InputDetails({Key? key}) : super(key: key);

  @override
  State<InputDetails> createState() => _InputDetailsState();
}

class _InputDetailsState extends State<InputDetails> {
  Gender selectedCard = Gender.unselected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCard = Gender.male;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            color: Colors.white,
                            size: 70,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedCard == Gender.male
                            ? Colors.cyan
                            : Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCard = Gender.female;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            color: Colors.white,
                            size: 70,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedCard == Gender.female
                            ? Colors.cyan
                            : Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCard = Gender.others;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.marsAndVenus,
                            color: Colors.white,
                            size: 70,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'OTHERS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedCard == Gender.others
                            ? Colors.cyan
                            : Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //second row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Third Row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //fourth row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            height: 80,
            width: double.infinity,
            child: const Center(
              child: Text(
                'COMPUTE RESULT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
