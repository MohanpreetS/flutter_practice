import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/task_list.dart';
import 'screens/task_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TaskList(),
        ),
      ],
      child: MaterialApp(
        title: 'Questify',
        home: TaskScreen(),
        theme: ThemeData.dark(),
        routes: {
          TaskScreen.routeName: (_) => TaskScreen(),
        },
      ),
    );
  }
}
