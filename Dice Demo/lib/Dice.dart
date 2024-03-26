import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int ldnumber = 1;
  int rdnumber = 2;

  void updateState() {
    setState(() {
      ldnumber = Random().nextInt(6) + 1;
      rdnumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(197, 53, 151, 168),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              Get.to(
                () => const MyApp(),
              );
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        title: const Text("Dice"),
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        child: Container(
          color: Color.fromARGB(113, 74, 25, 25),
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      updateState();
                    },
                    child: Image.asset('assets/dice$ldnumber.png'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      updateState();
                    },
                    child: Image.asset('assets/dice$rdnumber.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
