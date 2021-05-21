import 'package:flutter/material.dart';

import 'task.dart';

class TaskList with ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'a', id: 'a1'),
    Task(title: 'b', id: 'a2'),
    Task(title: 'c', id: 'a3'),
  ];

  List<Task> get tasks {
    return [..._tasks];
  }
}
