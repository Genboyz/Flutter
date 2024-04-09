import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: MaterialButton(
                    height: MediaQuery.of(context).size.height * 0.14,
                    color: Color.fromARGB(255, 16, 20, 41),
                    onPressed: () {},
                    child: Text("hello")),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: MaterialButton(
                    height: MediaQuery.of(context).size.height * 0.14,
                    minWidth: MediaQuery.of(context).size.width * 0.14,
                    color: Color.fromARGB(255, 16, 20, 41),
                    onPressed: () {},
                    child: Text("hello")),
              )),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.94,
            height: MediaQuery.of(context).size.height * 0.16,
            child: Card(
              color: Color.fromARGB(255, 16, 20, 41),
              child: Text("hello"),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: MaterialButton(
                    height: MediaQuery.of(context).size.height * 0.14,
                    color: Color.fromARGB(255, 16, 20, 41),
                    onPressed: () {},
                    child: Text("hello")),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: MaterialButton(
                    height: MediaQuery.of(context).size.height * 0.14,
                    minWidth: MediaQuery.of(context).size.width * 0.14,
                    color: Color.fromARGB(255, 16, 20, 41),
                    onPressed: () {},
                    child: Text("hello")),
              )),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}
