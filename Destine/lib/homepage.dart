import 'package:flutter/material.dart';
import 'story_page.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/sky.jpg'), fit: BoxFit.cover)),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Short Stories',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: Color.fromARGB(255, 38, 38, 38),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: MaterialButton(
                  color: Color.fromARGB(186, 120, 47, 1),
                  height: 80,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => StoryPage(0)));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'STICKY SITUATION',
                        style: TextStyle(
                            color: const Color.fromARGB(187, 255, 255, 255),
                            fontSize: 20),
                      ),
                      Icon(Icons.navigate_next_rounded, size: 35),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: MaterialButton(
                  color: const Color.fromARGB(186, 120, 47, 1),
                  height: 80,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => StoryPage(1)));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SUSPENSE',
                        style: TextStyle(
                            color: Color.fromARGB(187, 255, 255, 255),
                            fontSize: 20),
                      ),
                      Icon(Icons.navigate_next_rounded, size: 35),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: MaterialButton(
                  color: const Color.fromARGB(186, 120, 47, 1),
                  height: 80,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => StoryPage(2)));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'DARK HUMOR',
                        style: TextStyle(
                            color: Color.fromARGB(187, 255, 255, 255),
                            fontSize: 20),
                      ),
                      Icon(Icons.navigate_next_rounded, size: 35),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: MaterialButton(
                  color: const Color.fromARGB(186, 120, 47, 1),
                  height: 80,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => StoryPage(3)));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'FUNNY',
                        style: TextStyle(
                            color: Color.fromARGB(187, 255, 255, 255),
                            fontSize: 20),
                      ),
                      Icon(Icons.navigate_next_rounded, size: 35),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
