import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'question_list.dart';

Listclass questionBank = Listclass();
int score = 0;
void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int value = 0;
  List<Icon> flags = [];
  void display(int val, bool ans) {
    if (questionBank.getansw(val) == ans) {
      flags.add(
        const Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
      score++;
    } else {
      flags.add(
        const Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }
  }

  void updateState(int nextIndex) {
    setState(() {
      if (nextIndex == 13) {
        Alert(
          context: context,
          title: 'You Scored $score/13',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        value = 0;
        score = 0;
        flags = [];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank.getques(value),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: MaterialButton(
              textColor: Colors.white,
              color: Colors.green,
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                display(value, true);
                value++;
                updateState(value);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: MaterialButton(
              color: Colors.red,
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                display(value, false);
                value++;
                updateState(value);
              },
            ),
          ),
        ),
        Row(
          children: flags,
        ),
      ],
    );
  }
}
