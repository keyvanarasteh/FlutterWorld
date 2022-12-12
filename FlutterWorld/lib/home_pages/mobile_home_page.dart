import 'package:flutter/material.dart';
import 'package:responsive_chat_app/constants/ProjecConstants.dart';

import '../common/screens/group.dart';
import '../common/screens/people.dart';
import '../common/screens/recent_chat.dart';
import '../common/screens/setting.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({super.key});

  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            "images/messengerLogo.png",
            width: 30,
            height: 30,
          ),
          onPressed: null,
        ),
        backgroundColor: ProjectConst.barColor,
        title: const Text(
          'Messenger',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      //yazılan şartı kontrol eder.true dönüyorsa ilkini yapar false dönüyorsa ikinci ihtimale bakar
      body: pageIndex == 0
          ? const RecentChats()
          : pageIndex == 1
              ? const GroupScreen()
              : pageIndex == 2
                  ? const PeopleScreen()
                  : const SettingsScreen(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.punch_clock),
            label: 'Recent',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'People',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: pageIndex,
        unselectedItemColor: Colors.grey[700],
        selectedItemColor: Colors.blue,
        onTap: ((value) {
          //Stefull widgetta değer değiştirmek için kullanılır.Ekranı tekrardan build alır
          setState(() {
            pageIndex = value;
          });
        }),
      ),
    );
  }
}
