import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  TasksScreen({super.key});

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Widget> taskslist = [];
  int value = 0;

  Widget taskAdder(String tasks) {
    return Text(
      tasks,
      style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            value++;
            Widget theTask = taskAdder('Task $value');
            taskslist.add(theTask);
          });
        },
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.07, left: screenWidth * 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 45,
                      color: Colors.lightBlueAccent,
                    ),
                    backgroundColor: Colors.white,
                    radius: 32,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "$value Tasks",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.07, left: screenWidth * 0.1),
                child: tasklist(),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
