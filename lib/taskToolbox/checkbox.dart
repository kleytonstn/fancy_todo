import 'package:flutter/material.dart';
import 'package:todo_app/taskToolbox/layout.dart';

class TaskCheckbox extends StatefulWidget {
  // require task in order to initialize the task name in the Text widget
  const TaskCheckbox({Key? key}) : super(key: key);

  @override
  CheckBoxWidgetClass createState() => CheckBoxWidgetClass();
}

// change the CheckBoxWidgetClass to have TaskCheckBox as the type of argument
class CheckBoxWidgetClass extends State<TaskCheckbox> {
  bool isDone = false;

  // Create a method that archives task when the checkbox is toggled
  void toggleCheckBox(bool? val) {
    if (val != null) {
      setState(() {
        isDone = !isDone;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Transform.scale(
        scale: 1.5,
        child: Checkbox(
          value: isDone,
          onChanged: (value) {
            toggleCheckBox(isDone);
          },
          activeColor: Colors.blue[900],
          checkColor: Colors.white,
          tristate: false,
        ),
      ),
      // Text(widget.taskName), // widget accesses Task to get the name
    ]);
  }
}
