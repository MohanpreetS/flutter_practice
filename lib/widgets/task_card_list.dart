import 'package:flutter/material.dart';
import 'package:questify/providers/task_list.dart';

import 'task_card.dart';

class TaskCardList extends StatefulWidget {
  TaskCardList({
    @required this.taskList,
  });

  final TaskList taskList;

  @override
  _TaskCardListState createState() => _TaskCardListState();
}

class _TaskCardListState extends State<TaskCardList> {
  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   itemBuilder: (context, i) => Card(
    //     child: ClipRRect(
    //         borderRadius: BorderRadius.circular(15),
    //         child: TaskCard(title: widget.taskList.tasks[i].title),),
    //   ),
    //   itemCount: widget.taskList.tasks.length,
    // );
    return SingleChildScrollView(
      child: Column(
        children: [
          ...widget.taskList.tasks
              .map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TaskCard(title: e.title),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
