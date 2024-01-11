import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'TODO List';

    return MaterialApp(
      title: title,
      home: TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  @overrride
  _TodoListState createState()=>_
}