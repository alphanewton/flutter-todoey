import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String newTaskTitle = '';
  // final Function addTaskCallback;

  // AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
        ),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Add Task', style: TextStyle(color: Colors.blueAccent, fontSize: 30), textAlign: TextAlign.center,),
              TextField(
                onChanged: (newText){
                  newTaskTitle = newText;
                },
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20,),
              TextButton(onPressed: (){
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              }, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent)), child: Text('Add', style: TextStyle(color: Colors.white),),)
            ],
          ),
        ),
      ),
    );
  }
}
