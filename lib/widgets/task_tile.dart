import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String ?taskTitle;
  final Function(bool?) ?checkBoxCallBack;
  final VoidCallback ?longPressCallBack;

  TaskTile({this.isChecked = false, this.taskTitle, this.checkBoxCallBack, this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle.toString(),
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack
      ),
      onLongPress: longPressCallBack,
    );
  }
}