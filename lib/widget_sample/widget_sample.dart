import 'package:flutter/material.dart';

class WidgetSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgetサンプル'),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
