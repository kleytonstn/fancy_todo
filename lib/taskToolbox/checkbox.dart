import 'package:flutter/material.dart';

class TaskCheckbox extends StatefulWidget {
  const TaskCheckbox({Key? key}) : super(key: key);

  @override
  CheckBoxWidgetClass createState() => CheckBoxWidgetClass();
}

class CheckBoxWidgetClass extends State{
  bool isDone = false;

  // Create a method that archives task when the checkbox is toggled
  void toggleCheckBox(bool? val){
    if(val != null){

      setState(() {
        isDone = true;
      });
      // TODO (Kleyton): if toggled, move task to archived or scratch text and send it down
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: isDone,
            onChanged: (value){toggleCheckBox(isDone);},
            activeColor: Colors.blue[900],
            checkColor: Colors.white,
            tristate: false,
          ),
        ),

        ]);
  }
}

