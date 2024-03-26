import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/Dice.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 99, 76),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                  color: Colors.black87,
                ),
                onTap: () {
                  Get.to(() => const Dice());
                },
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                const CircleAvatar(
                  radius: 85,
                  foregroundImage: AssetImage("assets/me.jpg"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Olimars Tamirayehu",
                  style: TextStyle(
                      fontSize: 27,
                      color: Colors.white,
                      fontFamily: "Pacifico",
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
                const Text(
                  "Developer",
                  style: TextStyle(
                      color: Colors.grey, fontSize: 15, letterSpacing: 5),
                ),
                const Divider(
                  color: Color.fromARGB(255, 255, 255, 255),
                  thickness: 1,
                  endIndent: 40,
                  indent: 40,
                ),
                const SizedBox(
                  height: 30,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.teal[600],
                    ),
                    title: const Text("+251900000000"),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.teal[600],
                    ),
                    title: const Text("olimarsta@gmail.com"),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
