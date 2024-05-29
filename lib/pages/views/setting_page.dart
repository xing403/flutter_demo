import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

import '../../components/card_list.dart';
import '../../components/card_list_item.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  void _onTapItem(int index) {
    TDToast.showText("你点击了第 $index 项", context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: TDAvatar(
              icon: TDIcons.user_avatar,
              size: TDAvatarSize.large,
              shape: TDAvatarShape.circle,
              backgroundColor: Colors.blue,
              defaultUrl: "assets/images/header.jpg",
            ),
          ),
        ),
        CardList(
          title: "这是一个可选标题列表",
          onTap: _onTapItem,
          children: const [
            CardListItem(title: 'title1'),
            CardListItem(title: 'title2'),
            CardListItem(title: 'title3'),
            CardListItem(title: 'title4'),
            CardListItem(title: 'title5'),
          ],
        )
      ],
    );
  }
}
