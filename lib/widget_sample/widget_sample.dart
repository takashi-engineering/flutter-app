import 'package:flutter/material.dart';

class WidgetSample extends StatefulWidget {
  const WidgetSample({
    super.key,
    required this.name,
  });

  final String name;

  @override
  State<WidgetSample> createState() => _WidgetSampleState();
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Widgetサンプル'),
  //     ),
  //     body: Container(
  //       color: Colors.red,
  //       child: Text(name),
  //     ),
  //   );
  // }
}

class _WidgetSampleState extends State<WidgetSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgetサンプル'),
      ),
      body: Container(
        color: Colors.red,
        child: Text(widget.name),
      ),
    );
  }
}
