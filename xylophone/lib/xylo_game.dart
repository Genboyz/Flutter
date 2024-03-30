import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'first_app.dart';

class XyloGame extends StatefulWidget {
  const XyloGame({super.key});

  @override
  State<XyloGame> createState() => _XyloGameState();
}

class _XyloGameState extends State<XyloGame> {
  Expanded buildstruct(Color color, int audioNumber) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () async {
          final player = AudioPlayer();
          await player.play(AssetSource('note$audioNumber.wav'));
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
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "XYLOPHONE",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.grey[600],
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                shadows: [
                  Shadow(
                    offset: Offset(1, 1),
                    blurRadius: 15,
                  )
                ],
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const FirstPage()));
              },
            ),
          ),
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
          )),
    );
  }
}
