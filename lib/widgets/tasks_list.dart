import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        final task = Provider.of<TaskData>(context).tasks[index];
        return TaskTile(
          taskTitle: task.name,
          isChecked: task.isDone,
          checkBoxCallBack: (bool? checkBoxState) {
            Provider.of<TaskData>(context, listen: false).updateTask(task);
          },
          longPressCallBack: (){
            Provider.of<TaskData>(context, listen: false).deleteTask(task);
            print('deleted task');
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}