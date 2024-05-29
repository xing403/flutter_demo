import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(
          child: TDAvatar(
            text: "头像",
            size: TDAvatarSize.large,
            shape: TDAvatarShape.circle,
            backgroundColor: Colors.blue,
          ),
        ),
      ],
    );
  }
}
