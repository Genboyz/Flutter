import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 119, 118, 118),

      //appBar: AppBar(toolbarHeight: 120, backgroundColor: Colors.transparent),

      body: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/cover.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 100,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(300, 150),
                      topRight: Radius.elliptical(300, 150)),
                  color: Color.fromARGB(255, 43, 0, 0),
                ),
              ),
            ),
            Positioned(
              top: 180,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            ),
          ]),
    );
  }
}
