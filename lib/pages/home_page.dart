import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
        child: Row(children: [
      SizedBox(
        width: 48,
        height: 32,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            TDText('消息'),
            Positioned(
              right: 0,
              top: 0,
              child: TDBadge(
                TDBadgeType.message,
                count: '8',
              ),
            )
          ],
        ),
      ),
      SizedBox(
        width: 40,
      ),
      SizedBox(
        width: 34,
        height: 34,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Icon(TDIcons.notification),
            Positioned(
              right: 0,
              top: 0,
              child: TDBadge(
                TDBadgeType.message,
                count: '8',
              ),
            )
          ],
        ),
      ),
      SizedBox(
        width: 40,
      ),
      SizedBox(
        width: 86,
        height: 54,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            TDButton(
              width: 80,
              height: 48,
              text: '按钮',
              size: TDButtonSize.large,
            ),
            Positioned(
              right: 0,
              top: 0,
              child: TDBadge(
                TDBadgeType.message,
                count: '8',
              ),
            )
          ],
        ),
      ),
    ]));
  }
}
