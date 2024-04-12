import 'package:flutter/material.dart';
class bottomButton extends StatelessWidget {
  final void Function()? ontap;
  final String buttonTitle;
  const bottomButton({required this.ontap, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text("CALCULATE YOUR BMI",
              style: TextStyle(
                fontFamily: "Pacifico",
                fontSize: 22,
              )),
        ),
        color: Color.fromARGB(198, 235, 21, 85),
        width: double.infinity,
        height: 80,
      ),
    );
  }
}
