import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:xylophone/profile.dart';

import 'xylo_game.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 67, 78, 134),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Lottie.asset(
                'assets/game.json',
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color:
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                        blurRadius: 11,
                        spreadRadius: 8,
                        offset: const Offset(9, 11),
                      ),
                      BoxShadow(
                        color: const Color.fromARGB(255, 189, 199, 250)
                            .withOpacity(1),
                        blurRadius: 4,
                        spreadRadius: 1.5,
                        offset: const Offset(-0.8, -2.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      width: 0.3,
                      color: const Color.fromARGB(255, 86, 86, 86),
                    ),
                  ),
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const XyloGame()));
                    },
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const XyloGame()));
                        },
                        icon: const Icon(
                          Icons.play_arrow_rounded,
                          size: 55,
                        )),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: 55,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
              style: ElevatedButton.styleFrom(
                elevation: 50,
                padding: EdgeInsets.zero,
              ),
              child: const Icon(
                Icons.account_circle_rounded,
                size: 55,
              ),
            ),
          ),
        ],
      ),
    );
  }
}









/* drawer: Drawer(
          backgroundColor: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Business"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("School"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ), */
