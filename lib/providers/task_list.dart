import 'package:flutter/material.dart';

import 'task.dart';

class TaskList with ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'a'),
    Task(title: 'b'),
    Task(title: 'c'),
  ];

  List<Task> get tasks {
    return [..._tasks];
  }
}
