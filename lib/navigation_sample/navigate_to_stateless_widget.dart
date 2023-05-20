import 'package:flutter/material.dart';

class NavigateToStatelessWidget extends StatelessWidget {
  const NavigateToStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless Widget'),
      ),
      body: const Column(
        children: [
          Text("Navigate to Stateless Widget Sample"),
        ],
      ),
    );
  }
}
