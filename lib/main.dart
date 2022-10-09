import 'package:demoflutter/body.dart';
import 'package:flutter/material.dart';
import 'package:demoflutter/menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'My Flutter 101';

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    var materialApp = MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // ignore: prefer_const_constructors
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: MyMenu("hello"),
            body: const MyBody(),
          )),
      // home: const Scaffold(body: Center(child: Text("hello"))),
    );
    return materialApp;
  }
}
