import 'package:flutter/material.dart';
import 'TaskToolbox/Layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tasks = List.generate(5, (int index) => index);
    return Scaffold(
      // returns the home screen as Scaffold for hot reload
      appBar: AppBar(
          title: const Text('TODO App'), backgroundColor: Colors.blue[100]),
      body: ListView(
        children: tasks.map((task) => TaskLayout(taskName: '#$task task')).toList(),

      ),
      // TODO(Kleyton): The number + name of the task isn't being displayed
    );
  }
}