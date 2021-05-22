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
    final mediaQuery = MediaQuery.of(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: mediaQuery.size.height * 0.1,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.redAccent.withOpacity(0.7),
              Colors.redAccent,
            ],
          ),
          //borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Time left'), Text('-')],
            )
          ],
        ),
      ),
    );
  }
}
