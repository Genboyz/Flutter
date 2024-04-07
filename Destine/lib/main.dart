import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  const Destini({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const homePage(),
    );
  }
}

