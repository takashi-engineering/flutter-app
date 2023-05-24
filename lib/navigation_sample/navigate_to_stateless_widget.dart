import 'package:flutter/material.dart';

class NavigateToStatelessWidget extends StatelessWidget {
  const NavigateToStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // 画面部分を構築する部分
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless Widget'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Navigate to Stateless Widget Sample"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/stateful-widget');
              },
              child: const Text("Stateful Widget Sampleへ"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ],
        ),
      ),
    );
  }
}
