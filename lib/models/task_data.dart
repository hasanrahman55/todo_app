import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_task);
  }

  int get taskCount {
    return _task.length;
  }

  void addTask(String newTask) {
    final task = Task(name: newTask);
    _task.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.revers();
    notifyListeners();
  }

  void delet(Task task) {
    _task.remove(task);
    notifyListeners();
  }
}
