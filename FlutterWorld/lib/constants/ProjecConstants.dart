import 'package:flutter/material.dart';

class ProjectConst {
  static List<String> settingsText = [
    "Account",
    "Security",
    "Chats",
    "Notifications",
    "Storage and data",
    "App language",
    "Help"
  ];
  static List<String> settingsDesc = [
    "Manage Your Account",
    "Provide your security",
    "Customize your chat screen",
    "Notification voice",
    "Manage Local Storage",
    "Turkish",
    ""
  ];
  static List<Icon> settingsIcons = [
    Icon(
      Icons.key,
      color: iconsColor,
    ),
    Icon(Icons.security, color: iconsColor),
    Icon(Icons.chat, color: iconsColor),
    Icon(Icons.notifications, color: iconsColor),
    Icon(Icons.storage, color: iconsColor),
    Icon(Icons.language, color: iconsColor),
    Icon(Icons.help_outline, color: iconsColor),
  ];
  static List<String> imagesPath = [
    "images/kisi1.png",
    "images/kisi2.png",
    "images/kisi3.png",
    "images/kisi4.png",
    "images/kisi5.png",
    "images/kisi6.png",
    "images/kisi7.png",
    "images/kisi8.png",
    "images/kisi9.png",
  ];

  static List<String> personName = [
    "Keyvan",
    "Hamdican",
    "Murat",
    "Can",
    "Ahmet",
    "Ramazan",
    "Ahmad",
    "Berk",
    "Mehmet",
  ];

  static Color iconsColor = Colors.black;
  static Color barColor = const Color.fromARGB(255, 250, 250, 250);
  static Color greyBackground = const Color.fromRGBO(245, 245, 245, 1);
}
