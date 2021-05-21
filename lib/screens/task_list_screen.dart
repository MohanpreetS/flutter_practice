import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/task_list.dart';
import '../widgets/task_card.dart';
import '../widgets/task_card_list.dart';

class TaskScreen extends StatefulWidget {
  static const routeName = './task_creen';
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    final taskList = Provider.of<TaskList>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Questify')),
      body: TaskCardList(taskList: taskList),
    );
  }
}
