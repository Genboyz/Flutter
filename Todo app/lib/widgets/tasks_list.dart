import 'package:flutter/material.dart';

import '../screens/TasksScreen.dart';

class tasklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (context, index) {
        return TaskTile();
      },
    );
  }
}
