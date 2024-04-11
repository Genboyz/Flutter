import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  const RoundIcon({required this.onpress, required this.icon});
  final VoidCallback onpress;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        shape: CircleBorder(),
        elevation: 0,
        child: Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
        constraints: BoxConstraints.tightFor(width: 56, height: 56),
        fillColor: Color(0xFF4C4F5E),
        onPressed: onpress);
  }
}
