import 'package:flutter/material.dart';
import 'package:flutter_app/navigation_sample/navigate_to_stateful_widget.dart';
import 'package:flutter_app/navigation_sample/navigate_to_stateless_widget.dart';
import 'package:flutter_app/widget_sample/widget_sample.dart';

// 1. エントリーポイントのmain関数
void main() {
  // 2. MyAppを呼び出す。
  runApp(const MyApp());
}

// MyAppクラス
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 3. タイトルとテーマを設定する。画面の本体はMyHomePageで作る。
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _type = "偶数";

  // 5. カウンタが押された時のメソッド
  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter % 2 == 0) {
        _type = "偶数";
      } else {
        _type = "奇数";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // 4. MyHomePageの画面部分を構築する部分
    return Scaffold(
      // 画面上部のタイトル部分
      appBar: AppBar(
        // title: const Row(children: [
        //   Icon(Icons.create),
        //   Text("初めてのタイトル"),
        // ]),
        title: Text(widget.title),
      ),
      // body: Column(children: [
      //   const Text("Hello World"),
      //   const Text("ハローワールド"),
      //   const Text("3行目"),
      //   const Text("4行目"),
      //   TextButton(
      //       onPressed: () => {print("ボタンが押されたよ")},
      //       child: const Text("テキストボタン")),
      //   const Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       Icon(
      //         Icons.favorite_sharp,
      //         color: Colors.pink,
      //         size: 24.0,
      //       ),
      //       Icon(
      //         Icons.audiotrack,
      //         color: Colors.green,
      //         size: 30.0,
      //       ),
      //       Icon(Icons.beach_access, color: Colors.blue, size: 36.0),
      //     ],
      //   )
      // ]),

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       // 画面の中央に表示されるテキスト
      //       const Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       // テキストの下に表示されるカウンタ値
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //       Text(
      //         _type,
      //         style: const TextStyle(fontSize: 20, color: Colors.red),
      //       ),
      //     ],
      //   ),
      // ),

      // body: Center(
      //   child: ElevatedButton(
      //     child: const Text("Widgetサンプルへ"),
      //     onPressed: () {
      //       // ボタンが押された時に呼び出されるコードを書く。
      //       Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => const WidgetSample(
      //               name: '渡した値',
      //             ),
      //             // builder: (context) => const WidgetSample(),
      //           ));
      //     },
      //   ),
      // ),

      body: Column(children: [
        ElevatedButton(
          onPressed: () {
            // ボタンが押された時に呼び出されるコード
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const WidgetSample(name: "Widget Sample"),
                ));
          },
          child: const Text("Widgetサンプルへ"),
        ),
        ElevatedButton(
          onPressed: () {
            // ボタンが押された時に呼び出されるコード
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NavigateToStatelessWidget(),
                ));
          },
          child: const Text("Stateless Widget Sampleへ"),
        ),
        ElevatedButton(
          onPressed: () {
            // ボタンが押された時に呼び出されるコード
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NavigateToStatefulWidget(),
                ));
          },
          child: const Text("Stateful Widget Sampleへ"),
        ),
      ]),

      // 右下の「+」ボタンに対応するフローティングアクションボタン
      floatingActionButton: FloatingActionButton(
        // onPressed: () => {print("押したね？")}, child: const Icon(Icons.timer),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // drawer: const Drawer(child: Center(child: Text("Drawer"))),
      // endDrawer: const Drawer(child: Center(child: Text("End Drawer"))),
    );
  }
}
