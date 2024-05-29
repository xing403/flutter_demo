import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const App()); // app 入口
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo', // 应用标题
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
