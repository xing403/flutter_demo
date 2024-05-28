import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
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
      home: Scaffold(
        appBar: TDNavBar(
          height: 48,
          title: 'flutter demo',
          titleFontWeight: FontWeight.w600,
          centerTitle: false, // 标题居中
          titleMargin: 0,
          screenAdaptation: true,
          useDefaultBack: false,
        ),
        body: SafeArea(child: HomePage()),
      ),
    );
  }
}
