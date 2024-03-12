import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(color: Colors.blue[500]),
        child: Row(
          children: [
            const IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'Navigation Menu',
                onPressed: null),
            Expanded(
              child: title,
            ),
            const IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ));
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
            title: Text('Example Title',
                style: Theme.of(context).primaryTextTheme.titleLarge),
          ),
          const Expanded(
            child: Center(
              child: Text('Hello, World!'),
            ),
          ),
        ],
      ),
    );
  }
}

class BasicWidgets extends StatelessWidget {
  const BasicWidgets({super.key});

  void back(context2) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const SafeArea(
          child: MyScaffold(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {Navigator.pop(context)},
          child: const Icon(Icons.arrow_back),
        ));
  }
}
