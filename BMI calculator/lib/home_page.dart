import 'package:bmi_calculator/twoCard.dart';
import 'package:flutter/material.dart';
import 'cardContent.dart';
import 'constants.dart';
import 'reusableCard.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? SelectedGender;
  int sliderValue = 150;
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    onpress: () {
                      setState(() {
                        SelectedGender = Gender.male;
                      });
                    },
                    colour: SelectedGender == Gender.male
                        ? activeColor
                        : inActiveColor,
                    cardcontent: genderOptionCard(
                      text: "MALE",
                      genderIcon: Icon(
                        Icons.male,
                        size: 80,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    onpress: () {
                      setState(() {
                        SelectedGender = Gender.female;
                      });
                    },
                    colour: SelectedGender == Gender.female
                        ? activeColor
                        : inActiveColor,
                    cardcontent: genderOptionCard(
                      text: "FEMALE",
                      genderIcon: Icon(
                        Icons.female,
                        size: 80,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ResuableCard(
              colour: activeColor,
              cardcontent: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: labelstyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '$sliderValue',
                          style: fontSize,
                        ),
                        Text(
                          'cm',
                        )
                      ],
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color.fromARGB(255, 255, 255, 255),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      min: 54,
                      max: 240,
                      //activeColor: Color.fromARGB(255, 255, 255, 255),
                      inactiveColor: Color(0xFF8E8D98),
                      value: sliderValue.toDouble(),
                      onChanged: (double value) {
                        setState(() {
                          sliderValue = value.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                      colour: activeColor,
                      cardcontent: TwoCards(
                        labels: "WEIGHT",
                      )),
                ),
                Expanded(
                  child: ResuableCard(
                      colour: activeColor,
                      cardcontent: TwoCards(
                        labels: "AGE",
                      )),
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: Text("CALCULATE YOUR BMI",
                  style: TextStyle(
                    fontFamily: "Pacifico",
                    fontSize: 22,
                  )),
            ),
            color: Color.fromARGB(198, 235, 21, 85),
            width: double.infinity,
            height: 80,
          ),
        ],
      ),
    );
  }
}
