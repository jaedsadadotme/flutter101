import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        Card(
          child: Text("Home"),
        ),
        Card(
          child: Text("Setting"),
        ),
      ],
    );
  }
}
