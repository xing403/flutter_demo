import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

class CardList extends StatefulWidget {
  final String title;

  final List<Widget> children;
  final void Function(int index)? onTap;
  const CardList({
    this.title = '',
    required this.children,
    super.key,
    this.onTap,
  });

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  final List<Widget> children = [];
  Widget _initTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          widget.title == "" ? Container() : TDText(widget.title),
        ],
      ),
    );
  }

  void _initChildren() {
    for (var i = 0; i < widget.children.length; i++) {
      children.add(
        InkWell(
          onTap: () => widget.onTap!(i),
          hoverColor: Colors.grey[200],
          splashColor: Colors.red[400], // 点击飞溅的颜色
          child: widget.children[i],
        ),
      );

      if (i != widget.children.length - 1) {
        children.add(const TDDivider());
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _initTitle();
    _initChildren();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      _initTitle(),
      Container(
        color: Colors.white,
        child: Column(
          children: children,
        ),
      )
    ]);
  }
}
