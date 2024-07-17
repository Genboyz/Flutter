import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';

import '../Components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController control;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    control = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    animation = ColorTween(
            begin: Color.fromARGB(255, 69, 69, 69),
            end: const Color.fromARGB(255, 255, 255, 255))
        .animate(control);
    /*  animation = CurvedAnimation(
      parent: control,
      curve: Curves.decelerate,
    ); */
    /* animation.addStatusListener((status) {
      
    }); */
    control.forward();
    control.addListener(() {
      setState(
        () {},
      );
    });
  }

  @override
  void dispose() {
    control.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('images/logo.png'),
                      height: 60,
                    ),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          speed: Duration(milliseconds: 300),
                          'Flash Chat',
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 33, 31, 26),
                            fontSize: 45.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                      displayFullTextOnTap: true,
                    )),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              color: Colors.lightBlueAccent,
              onpress: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              title: 'Log in',
            ),
            RoundedButton(
              color: Colors.blueAccent,
              onpress: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              title: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}
