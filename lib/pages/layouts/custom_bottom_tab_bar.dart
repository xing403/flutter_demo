import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

// ignore: must_be_immutable
class CustomBottomTabBar extends StatefulWidget {
  Function(int index) onTap;

  CustomBottomTabBar(this.onTap, {super.key});

  @override
  createState() => _CustomBottomTabBar();
}

class _CustomBottomTabBar extends State<CustomBottomTabBar> {
  int _activeIndex = 0;

  final List<BottomNavigationBarItem> _items = [
    const BottomNavigationBarItem(
      icon: Icon(TDIcons.home),
      label: '首页',
    ),
    const BottomNavigationBarItem(
      icon: Icon(TDIcons.add),
      label: '新增',
    ),
    const BottomNavigationBarItem(
      icon: Icon(TDIcons.user_circle),
      label: '设置',
    ),
  ];

  void _onTapItem(int index) {
    setState(() {
      widget.onTap(index);
      _activeIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: _items,
      currentIndex: _activeIndex,
      selectedItemColor: Colors.blue,
      onTap: _onTapItem,
    );
  }

  int get activeIndex => _activeIndex;
}
