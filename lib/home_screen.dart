import 'package:flutter/material.dart';
import 'package:todo_app/taskToolbox/layout.dart';
import 'package:todo_app/taskToolbox/task_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<SingleTaskLayout> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // returns the home screen as Scaffold for hot reload
      appBar: AppBar(
        title: const Text('TODO App'),
        backgroundColor: Colors.blue[100],
      ),
      body: TaskList(task: tasks),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // asynchronous code, flutter will no execute further instructions before return
            String taskName = await showDialog(
                context: context,
                builder: (BuildContext context) {
                  var text = '';
                  return AlertDialog(
                    title: const Text('Add TODO'),
                    content: TextField(
                      onChanged: (value) {
                        text =
                            value; // updates the text with that inputted by the user
                      },
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Never mind'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(
                              text); // pop(text) returns the text to be stored into taskName
                        },
                        child: const Text('Add'),
                      ),
                    ],
                  );
                });
            setState(() {
              tasks.add(SingleTaskLayout(
                  taskName: taskName)); // updates the state of the Home widget
            });
          },
          backgroundColor: Colors.blue[900],
          child: const Center(child: Icon(Icons.add))),
    );
  }
}
