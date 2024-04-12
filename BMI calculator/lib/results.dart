import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';
import 'reusableCard.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    required this.calculatedbmi,
    required this.bmicategory,
    required this.description,
  });
  final String bmicategory;
  final String calculatedbmi;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: fontSize,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResuableCard(
              colour: activeColor,
              cardcontent: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmicategory.toUpperCase(),
                    style: kresultstyle,
                  ),
                  Text(
                    calculatedbmi,
                    style:
                        TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ),
          ),
          bottomButton(
              ontap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
