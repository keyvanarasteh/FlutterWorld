import 'package:flutter/material.dart';

import '../../constants/ProjecConstants.dart';
import '../widgets/setting_card.dart';

class MobileSettings extends StatelessWidget {
  const MobileSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Ben",
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            //resimleri gösterdiğimiz widget
            margin: const EdgeInsets.only(right: 5.0, left: 5.0),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("images/profilePhoto.png"),
                    fit: BoxFit.cover)),
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: ProjectConst.settingsText.length,
                itemBuilder: (BuildContext context, int index) {
                  return SettingCard(index: index);
                }),
          )
        ],
      ),
    );
  }
}
