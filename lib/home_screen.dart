import 'package:flutter/material.dart';
import 'package:todo_app/taskToolbox/task_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // returns the home screen as Scaffold for hot reload
      appBar: AppBar(
        title: const Text('TODO App'),
        backgroundColor: Colors.blue[100],
      ),
      body: TaskList(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            String taskName =
                ''; // initializes string to change later according to user-defined input
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Add TODO'),
                    content: TextField(
                      onChanged: (value) {
                        taskName = value.trim(); // removing white spaces
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
                          Navigator.of(context).pop();
                          // search up the widget tree to find the nearest widget that has the state of type _TaskListState,
                          // then call addTask() on that state obj
                          (context as Element)
                              .findAncestorStateOfType<TaskListState>()!
                              .addTask(taskName);
                        },
                        child: const Text('Add'),
                      ),
                    ],
                  );
                });
          },
          backgroundColor: Colors.blue[900],
          child: const Center(child: Icon(Icons.add))),
    );
  }
}
