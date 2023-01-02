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
          Container(
            decoration: const BoxDecoration(
                //color: ProjectConst.barColor,
                color: Colors.white,
                border: Border(
                    right: BorderSide(color: Colors.grey, width: 0.5),
                    top: BorderSide(width: 0.5, color: Colors.grey))),
            width: 60, //MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      icon: const Icon(Icons.chat),
                      color: pageIndex == 0
                          ? ProjectConst.iconsColor
                          : Colors.grey,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      icon: const Icon(Icons.group),
                      color: pageIndex == 1
                          ? ProjectConst.iconsColor
                          : Colors.grey,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 2;
                        });
                      },
                      icon: const Icon(Icons.store_mall_directory),
                      color: pageIndex == 2
                          ? ProjectConst.iconsColor
                          : Colors.grey,
                    ),
                    /*IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                  icon: const Icon(Icons.list),
                  color: pageIndex == 3 ? Colors.blue : Colors.grey,
                ),*/
                    IconButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 3;
                        });
                      },
                      icon: const Icon(Icons.chat_bubble),
                      color: pageIndex == 3
                          ? ProjectConst.iconsColor
                          : Colors.grey,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 4;
                        });
                      },
                      icon: const Icon(Icons.archive_sharp),
                      color: pageIndex == 4
                          ? ProjectConst.iconsColor
                          : Colors.grey,
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () => setState(() {
                        pageIndex = 5;
                      }),
                      child: Container(
                        //resimleri gösterdiğimiz widget
                        margin: const EdgeInsets.only(right: 5.0, left: 5.0),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("images/profilePhoto.png"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      //color: ProjectConst.barColor,
                      border: Border(
                    right: BorderSide(color: Colors.grey, width: 0.5),
                    //bottom: BorderSide(color: Colors.grey, width: 1),
                  )),
                  height: 51,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      /* Image.asset(
                        "images/messengerLogo.png",
                        width: 30,
                        height: 30,
                      ),*/
                      Expanded(
                        child: Text(
                          pageIndex == 0
                              ? "Sohbetler"
                              : pageIndex == 1
                                  ? "Kişiler"
                                  : pageIndex == 2
                                      ? "Marketplace Sohbetleri"
                                      : pageIndex == 3
                                          ? "İstekler"
                                          : pageIndex == 4
                                              ? "Arşivlenenler"
                                              : "Ayarlar",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Visibility(
                        visible: pageIndex == 0 ? true : false,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ProjectConst.greyBackground,
                          ),
                          margin: const EdgeInsets.only(right: 5.0),
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.video_call,
                            color: ProjectConst.iconsColor,
                            size: 20,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: pageIndex == 0
                            ? true
                            : pageIndex == 3
                                ? true
                                : false,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ProjectConst.greyBackground,
                          ),
                          margin: const EdgeInsets.only(right: 5.0),
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.edit,
                            color: ProjectConst.iconsColor,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            right: BorderSide(width: 0.5, color: Colors.grey))),
                    child: pageIndex == 0
                        ? const RecentChats()
                        : pageIndex == 1
                            ? const PeopleScreen()
                            : pageIndex == 2
                                ? const GroupScreen()
                                : pageIndex == 3
                                    ? const GroupScreen()
                                    : pageIndex == 4
                                        ? const GroupScreen()
                                        : SettingsScreen(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: ChatScreen(),
          ),
        ],
      ),
    );
  }
}
