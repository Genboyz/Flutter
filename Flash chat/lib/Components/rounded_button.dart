import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  late final Color color;
  late final VoidCallback onpress;
  late final String title;

  RoundedButton(
      {super.key,
      required this.color,
      required this.onpress,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onpress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
          ),
        ),
      ),
    );
  }
}
