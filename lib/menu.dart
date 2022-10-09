import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget with PreferredSizeWidget {
  // ignore: prefer_typing_uninitialized_variables
  final title;
  MyMenu(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: const TabBar(
        tabs: [
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.settings)),
        ],
      ),
      title: const Text('Flutter คืออะไร ?'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
