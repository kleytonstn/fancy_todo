import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(  // returns the home screen as Scaffold for hot reload
        appBar: AppBar(
            title: const Text('TODO App'),
            backgroundColor: Colors.blue[100]

        ),
        body: ListView(
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0), // todo: how do add padding to the top of 1st container?
                  child: Container(
                    height: 50,                       // todo: can this repeated code be avoided?
                    color: Colors.blue[100],
                    alignment: const Alignment(-0.9, 0),
                      child: const Text('#1 task'),

                  )
              ),   // offset from top and bottom
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(                   // Takes the task?
                    height: 50,
                    color: Colors.blue[100],
                    alignment: const Alignment(-0.9, 0),
                      child: const Text('#2 task'),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(                   // Takes the task?
                    height: 50,
                    color: Colors.blue[100],
                    alignment: const Alignment(-0.9, 0),
                      child: const Text('#3 task'),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(                   // Takes the task?
                    height: 50,
                    color: Colors.blue[100],
                    alignment: const Alignment(-0.9, 0),
                      child: const Text('#4 task'),
                  )
              )

            ],
          ),
        // todo list will be displayed in here
    );
  }
}



