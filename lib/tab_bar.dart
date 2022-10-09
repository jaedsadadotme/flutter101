import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

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
