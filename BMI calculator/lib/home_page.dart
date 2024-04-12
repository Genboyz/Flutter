import 'package:bmi_calculator/CalculatorBrain.dart';
import 'package:bmi_calculator/results.dart';
import 'package:flutter/material.dart';
import 'RoundIcon.dart';
import 'bottom_button.dart';
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
  int age = 50;
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
                    cardcontent: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: labelstyle,
                        ),
                        Text(
                          "${weight}",
                          style: fontSize,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIcon(
                              onpress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: Icons.remove,
                            ),
                            RoundIcon(
                              onpress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: Icons.add,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    colour: activeColor,
                    cardcontent: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: labelstyle,
                        ),
                        Text(
                          "${age}",
                          style: fontSize,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIcon(
                              onpress: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: Icons.remove,
                            ),
                            RoundIcon(
                              onpress: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icons.add,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomButton(
            buttonTitle: 'CALCULATE',
            ontap: () {
              CalculatorBrain user =
                  CalculatorBrain(weight: weight, height: sliderValue);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                      calculatedbmi: user.Bmicalculator(),
                      bmicategory: user.getResult(),
                      description: user.getDescription()),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
