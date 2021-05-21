import 'package:flutter/material.dart';

import 'sub_task.dart';

class Task {
  String title;
  String id;
  String details = '';
  Duration expectedTime = Duration.zero;
  List<SubTask> subTasks = [];
  bool done = false;

  Task({@required this.title, this.id});
}
