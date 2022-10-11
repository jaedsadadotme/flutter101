import 'package:demoflutter/body.dart';
import 'package:flutter/material.dart';
import 'package:demoflutter/menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'My Flutter 101';

  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: MyMenu("hello"),
            body: const MyBody(todos:[
                Todo(name: 'A'),
                Todo(name: 'B'),
                Todo(name: 'C'),
                Todo(name: 'D'),
                Todo(name: 'E'),
            ]),
          )),
    );
    return materialApp;
  }
}
