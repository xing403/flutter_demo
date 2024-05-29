import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

class CardListItem extends StatefulWidget {
  final String title;

  const CardListItem({
    super.key,
    required this.title,
  });

  @override
  State<CardListItem> createState() => _CardListItemState();
}

class _CardListItemState extends State<CardListItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // 增加左右两边空距
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        // 你可以通过这里设置高度来调整行高
        constraints: const BoxConstraints(minHeight: 56.0), // 假设你希望行高至少为 56
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TDText(widget.title),
            const Icon(TDIcons.chevron_right),
          ],
        ),
      ),
    );
  }
}
