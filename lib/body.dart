import 'package:flutter/material.dart';
import 'package:demoflutter/list_view.dart';
import 'package:demoflutter/tab_bar.dart';

class Todo {
  final String name;

  const Todo({
    required this.name,
  });
}

class MyBody extends StatelessWidget {
  final List<Todo> todos;
  
  const MyBody({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white38),
      child: ListView(
        children: todos
          .asMap()
          .keys
          .toList()
          .map((index) {
            return _tile(
              todos[index].name,
              "description${todos[index].name}",
              Icons.list);
          })
          .toList(),
      ),
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )
      ),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );
  }
}
