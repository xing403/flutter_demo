import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'layouts/custom_bottom_tab_bar.dart';
import 'views/setting_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static final List<Widget> activeWidgetOptions = <Widget>[
    const Text('首页'),
    const Text('新增'),
    const SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const TDNavBar(
          height: 48,
          title: 'flutter demo',
          titleFontWeight: FontWeight.w600,
          centerTitle: false, // 标题居中
          titleMargin: 0,
          screenAdaptation: true,
          useDefaultBack: false,
        ),
        body: activeWidgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: CustomBottomTabBar(_onItemTapped),
      ),
    );
  }
}
