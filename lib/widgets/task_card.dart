import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  final String title;

  TaskCard({@required this.title});
  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 8,
      ),
      child: ListTile(
        title: Text(widget.title),
      ),
    );
  }
}
