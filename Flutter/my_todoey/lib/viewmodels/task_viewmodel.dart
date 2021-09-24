import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:my_todoey/models/task.dart';

class TaskViewModel extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  addTask(String taskName) {
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  toggelTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  int get taskCount => _tasks.length;
}
