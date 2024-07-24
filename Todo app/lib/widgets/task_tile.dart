import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('it\'s me'),
      trailing: Checkbox(
        value: false,
        onChanged: (bool? value) {},
      ),
      dense: true,
      minVerticalPadding: MediaQuery.of(context).size.width * 0.0,
    );
  }
}
