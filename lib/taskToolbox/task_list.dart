import 'package:flutter/cupertino.dart';
import 'package:todo_app/taskToolbox/layout.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  TaskListState createState() => TaskListState();
}

class TaskListState extends State<TaskList> {
  List<SingleTaskLayout> tasks_ = List<SingleTaskLayout>.empty();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: tasks_
          .map((task) => SingleTaskLayout(taskName: task.taskName))
          .toList(),
    );
  }

  // update the list calling setState to rebuild the list view
  void addTask(String taskName) {
    if (taskName.isNotEmpty) {
      setState(() {
        tasks_.add(SingleTaskLayout(taskName: taskName));
      });
    }
  }
}
