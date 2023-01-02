import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_chat_app/common/widgets/large_screen_user_info.dart';
import 'package:responsive_chat_app/common/widgets/mobile_user_info.dart';
import 'package:responsive_chat_app/constants/ProjecConstants.dart';

class UserInfoScreen extends StatelessWidget {
  UserInfoScreen({super.key, required this.userName, required this.imagePath});
  String userName;
  String imagePath;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: screenWidth < 625
            ? AppBar(
                actions: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
                ],
                elevation: 0,
                backgroundColor: Colors.transparent,
                iconTheme: IconThemeData(color: Colors.black),
              )
            : null,
        body: screenWidth < 625
            ? MobileUserInfo(imagePath: imagePath, userName: userName)
            : LargeScreenUserInfo(imagePath: imagePath, userName: userName));
  }
}
