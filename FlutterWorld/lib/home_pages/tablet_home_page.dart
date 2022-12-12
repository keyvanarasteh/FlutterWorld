import 'package:flutter/material.dart';
import 'package:responsive_chat_app/constants/ProjecConstants.dart';

import '../common/screens/chat.dart';
import '../common/screens/group.dart';
import '../common/screens/people.dart';
import '../common/screens/recent_chat.dart';
import '../common/screens/setting.dart';

class TabletHomePage extends StatefulWidget {
  const TabletHomePage({super.key});

  @override
  State<TabletHomePage> createState() => _TabletHomePage();
}

class _TabletHomePage extends State<TabletHomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: ProjectConst.barColor,
                      border: Border(
                        right: BorderSide(color: Colors.grey, width: 2),
                        bottom: BorderSide(color: Colors.grey, width: 1),
                      )),
                  height: 51,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "images/messengerLogo.png",
                        width: 30,
                        height: 30,
                      ),
                      Expanded(
                        child: Text(
                          "Messanger",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5.0),
                        child: Icon(
                          Icons.edit,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            right: BorderSide(width: 2, color: Colors.grey))),
                    child: pageIndex == 0
                        ? const RecentChats()
                        : pageIndex == 1
                            ? const GroupScreen()
                            : pageIndex == 2
                                ? const PeopleScreen()
                                : const SettingsScreen(),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: ProjectConst.barColor,
                      border: const Border(
                          right: BorderSide(color: Colors.grey, width: 2),
                          top: BorderSide(width: 1, color: Colors.grey))),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            pageIndex = 0;
                          });
                        },
                        icon: Icon(Icons.punch_clock),
                        color: pageIndex == 0 ? Colors.blue : Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            pageIndex = 1;
                          });
                        },
                        icon: Icon(Icons.group),
                        color: pageIndex == 1 ? Colors.blue : Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            pageIndex = 2;
                          });
                        },
                        icon: Icon(Icons.list),
                        color: pageIndex == 2 ? Colors.blue : Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            pageIndex = 3;
                          });
                        },
                        icon: Icon(Icons.settings),
                        color: pageIndex == 3 ? Colors.blue : Colors.grey,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ChatScreen(),
          ),
        ],
      ),
    );
  }
}
