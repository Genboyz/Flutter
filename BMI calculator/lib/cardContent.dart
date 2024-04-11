import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class genderOptionCard extends StatelessWidget {
  genderOptionCard({required this.text, required this.genderIcon});
  final String text;
  final Icon genderIcon;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        genderIcon,
        Text(
          text,
          style: labelstyle,
        ),
      ],
    );
  }
}
