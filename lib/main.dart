import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final tasks = List.generate(5, (int index) => index);
    return Scaffold(
      // returns the home screen as Scaffold for hot reload
      appBar: AppBar(
          title: const Text('TODO App'), backgroundColor: Colors.blue[100]),
      body: ListView(
        children: tasks.map((task) => SomeKindaWankyWidget(taskName: '#$task task')).toList(),
      ),
      // todo list will be displayed in here
    );
  }
}

class SomeKindaWankyWidget extends StatelessWidget {
  const SomeKindaWankyWidget({
    Key? key,
    required this.taskName,
  }) : super(key: key);
  final String taskName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // Takes the task?
        height: 50,
        color: Colors.blue[100],
        alignment: const Alignment(-0.9, 0),
        child: const Text('#4 task'),
      ),
    );
  }
}
