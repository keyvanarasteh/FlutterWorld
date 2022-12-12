import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_chat_app/constants/ProjecConstants.dart';

class UserInfoScreen extends StatelessWidget {
  UserInfoScreen({super.key, required this.userName, required this.imagePath});
  String userName;
  String imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: ProjectConst.iconsColor),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
        toolbarHeight: 50,
        backgroundColor: ProjectConst.barColor,
        centerTitle: true,
        title: const Text(
          "User Info",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(imagePath), fit: BoxFit.contain)),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(userName),
              SizedBox(
                height: 15.0,
              ),
              Text("0555 555 55 55"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.call_outlined,
                    color: ProjectConst.iconsColor,
                  )),
              SizedBox(
                width: 15.0,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.video_call_outlined,
                    color: ProjectConst.iconsColor,
                  )),
              SizedBox(
                width: 15.0,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search_rounded,
                    color: ProjectConst.iconsColor,
                  )),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 1, color: Colors.grey),
                        bottom: BorderSide(width: 1, color: Colors.grey))),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.notifications,
                      color: ProjectConst.iconsColor,
                    ),
                    Expanded(
                        child: Text(
                      "Mute Notifications",
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 1, color: Colors.grey),
                        bottom: BorderSide(width: 1, color: Colors.grey))),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.music_note,
                      color: ProjectConst.iconsColor,
                    ),
                    Expanded(
                        child: Text(
                      "Special notifications",
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 1, color: Colors.grey),
                        bottom: BorderSide(width: 1, color: Colors.grey))),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.image,
                      color: ProjectConst.iconsColor,
                    ),
                    Expanded(
                        child: Text(
                      "Media Visiility",
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
