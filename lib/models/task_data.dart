import 'package:flutter/material.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Buy milk', isDone: false),
    Task(name: 'Buy eggs', isDone: false),
    Task(name: 'Buy bread', isDone: false),
  ];

  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}