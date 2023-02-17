import 'package:flutter/material.dart';
import 'Checkbox.dart';

class TaskLayout extends StatelessWidget {
  const TaskLayout({
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
        child: Row(
          children: const [
            TaskCheckbox(),
            Text("... Task"),
          ],

        ),

      ),
    );
  }
}