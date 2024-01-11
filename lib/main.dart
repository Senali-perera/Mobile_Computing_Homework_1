import 'package:flutter/material.dart';
import 'todo.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'TODO List App';

    return MaterialApp(
      title: title,
      home: TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState()=>_TodoListState();
}

class _TodoListState extends State<TodoList>{
  final List<Todo> _todos = [];

  void _addTodoItem(){
    for (var i = 0; i <= 10; i++) {
      Todo newToDo = Todo("Buy Groceries", false);
      _todos.add(newToDo);
    }
  }

  Widget _viewTodoItem(Todo todo){
    return ListTile(
      title: Text(todo.title),
      leading: IconButton(
        icon: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
        ),
        onPressed: () {
          setState(() {
            todo.isDone = !todo.isDone;
          });
        },
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          setState(() {
            _todos.remove(todo);
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _addTodoItem();
    return Scaffold(
      appBar: AppBar(title: Text('Todo List')),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return _viewTodoItem(_todos[index]);
        },
      ),
    );

  }
}