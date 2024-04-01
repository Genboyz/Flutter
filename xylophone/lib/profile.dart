import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 119, 118, 118),
      body: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/cover.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.32),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(300, 150),
                  topRight: Radius.elliptical(300, 150),
                ),
                color: Color.fromARGB(239, 42, 45, 71),
              ),
            ),
          ),
          Positioned(
            top: 180,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.19,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Colors.white,
                  border: Border.all(width: 3, color: Colors.white),
                  image: const DecorationImage(
                    image: AssetImage("assets/profile.jpg"),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.42,
              child: const Column(
                children: [
                  Text(
                    "Olimars Tamirayehu",
                    style: TextStyle(
                        color: Color.fromARGB(205, 255, 255, 255),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico',
                        letterSpacing: 2),
                  ),
                  Text(
                    "Flutter Developer",
                    style: TextStyle(
                        color: Color.fromARGB(255, 113, 118, 173),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                ],
              )),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.58,
            left: MediaQuery.of(context).size.width * 0.1,
            right: MediaQuery.of(context).size.width * 0.1,
            child: Card(
              elevation: 25,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'Contact Information',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Email: olimarsta@gmail.com\nPhone: +1234567890\nAddress: 123 Main Street, Addis',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
