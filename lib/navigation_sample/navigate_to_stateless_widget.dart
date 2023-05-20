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
      // body: const Column(
      //   children: [
      //     Text("Navigate to Stateless Widget Sample"),
      //     // Center(
      //     //   child: ElevatedButton(
      //     //       onPressed: () {
      //     //         Navigator.pop(context);
      //     //       },
      //     //       child: const Text("Go back!")),
      //     // ),
      //   ],
      // ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
