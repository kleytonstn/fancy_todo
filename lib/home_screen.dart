import 'package:flutter/material.dart';
import 'taskToolbox/layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tasks = List.generate(5, (int index) => index+1);
    return Scaffold(
      // returns the home screen as Scaffold for hot reload
      appBar: AppBar(
          title: const Text('TODO App'),
          backgroundColor: Colors.blue[100],
      ),
      body: ListView(
        children: tasks.map((task) => TaskLayout(taskName: '#$task task')).toList(), // TODO: user-defined mnemonic for task name
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){}, // TODO: add a new task
          backgroundColor: Colors.blue[900],
          child: const Center(
              child: Icon(
                  Icons.add
              )
            )
          ),
    );
  }
}