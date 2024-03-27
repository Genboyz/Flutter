import 'package:flutter/material.dart';
import 'dart:math';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int ballNum = 1;

  void update() {
    setState(() {
      ballNum = Random().nextInt(27) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Elevation for the entire Scaffold
      backgroundColor: const Color.fromARGB(255, 22, 90, 145),
      appBar: AppBar(
        elevation: 0, // No elevation for AppBar
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Text(
            'ASK ME ANYTHING',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 30, 134, 218),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4), // Shadow color
              offset: Offset(0, -2), // Offset of shadow
              blurRadius: 4, // Blur radius of shadow
            ),
          ],
        ),
        child: Center(
          child: MaterialButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              update();
            },
            child: Image.asset('images/ball$ballNum.png'),
          ),
        ),
      ),
    );
  }
}
