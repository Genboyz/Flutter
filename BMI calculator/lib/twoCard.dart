import 'package:flutter/material.dart';
import 'RoundIcon.dart';
import 'constants.dart';


class TwoCards extends StatefulWidget {
  const TwoCards({
    super.key,
    required this.labels,
  });
  //final int Values;
  final String labels;
  @override
  State<TwoCards> createState() => _TwoCardsState();
}

class _TwoCardsState extends State<TwoCards> {
  int current = 60;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.labels,
          style: labelstyle,
        ),
        Text(
          "$current",
          style: fontSize,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RoundIcon(
              onpress: () {
                setState(() {
                  current--;
                });
              },
              icon: Icons.remove,
            ),
            RoundIcon(
              onpress: () {
                setState(() {
                  current++;
                });
              },
              icon: Icons.add,
            ),
          ],
        )
      ],
    );
  }
}
