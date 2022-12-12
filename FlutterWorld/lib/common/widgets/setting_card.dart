import 'package:flutter/material.dart';

import '../../constants/ProjecConstants.dart';

class SettingCard extends StatelessWidget {
  SettingCard({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        child: Row(
          children: [
            ProjectConst.settingsIcons[index],
            const SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 0.2))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Text(
                        ProjectConst.settingsText[index],
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      ProjectConst.settingsDesc[index],
                      style: TextStyle(color: Colors.grey[400]),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
