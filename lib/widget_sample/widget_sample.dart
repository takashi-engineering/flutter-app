import 'package:flutter/material.dart';

class WidgetSample extends StatelessWidget {
  // ここにイニシャライザを書く
  WidgetSample(this.name, {super.key});
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgetサンプル'),
      ),
      body: Container(
        color: Colors.red,
        child: Text(name),
      ),
    );
  }
}
