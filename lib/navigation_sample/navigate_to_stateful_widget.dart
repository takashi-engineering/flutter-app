import 'package:flutter/material.dart';

class NavigateToStatefulWidget extends StatefulWidget {
  const NavigateToStatefulWidget({super.key});

  @override
  State<StatefulWidget> createState() => _NavigateToStatefulWidget();
}

class _NavigateToStatefulWidget extends State<NavigateToStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widget'),
      ),
      body: const Column(
        children: [
          Text("Navigate to Stateful Widget Sample"),
        ],
      ),
    );
  }
}
