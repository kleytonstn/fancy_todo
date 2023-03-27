import 'package:flutter/cupertino.dart';
import 'package:todo_app/taskToolbox/layout.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key, required this.task}) : super(key: key);
  final List<SingleTaskLayout> task;

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: task
            .map((task) => SingleTaskLayout(taskName: task.taskName))
            .toList());
  }
}
/*
class TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widget.tasks
          .map((task) => SingleTaskLayout(taskName: task.taskName))
          .toList(),
    );
  }

// update the list calling setState to rebuild the list view
}*/
