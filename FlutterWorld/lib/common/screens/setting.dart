import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_chat_app/common/widgets/setting_card.dart';
import 'package:responsive_chat_app/constants/ProjecConstants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: ProjectConst.settingsText.length,
        itemBuilder: (BuildContext context, int index) {
          return SettingCard(index: index);
        });
  }
}
