import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XyloGame extends StatefulWidget {
  const XyloGame({super.key});

  @override
  State<XyloGame> createState() => _XyloGameState();
}

class _XyloGameState extends State<XyloGame> {
  int val = 1;
  Expanded buildstruct(Color color, int num) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () async {
          final player = AudioPlayer();
          await player.play(AssetSource('note$num.wav'));
        },
      ),
    );
  }

  List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < colors.length; i++)
                buildstruct(colors[i], i + 1),
            ],
          ),
        ));
  }
}
