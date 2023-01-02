import 'package:flutter/material.dart';
import 'package:responsive_chat_app/common/screens/story_page.dart';
import 'package:responsive_chat_app/common/widgets/message_type_area.dart';
import 'package:responsive_chat_app/constants/ProjecConstants.dart';

import '../common/screens/call_page.dart';
import '../common/screens/group.dart';
import '../common/screens/mobile_settings.dart';
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
        leadingWidth: 45,
        leading: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => MobileSettings()));
          },
          child: Container(
            //resimleri gösterdiğimiz widget
            margin: const EdgeInsets.only(right: 5.0, left: 5.0),

            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("images/profilePhoto.png"),
                    fit: BoxFit.cover)),
          ),
        ),
        backgroundColor: ProjectConst.barColor,
        title: Text(
          pageIndex == 0
              ? " Sohbetler"
              : pageIndex == 1
                  ? "Aramalar"
                  : pageIndex == 2
                      ? "Kişiler"
                      : pageIndex == 3
                          ? "Hikayeler"
                          : "Ben",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          CircleAvatar(
            radius: 17,
            backgroundColor: ProjectConst.greyBackground,
            child: Icon(
              Icons.camera_alt,
              size: 17,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          CircleAvatar(
            radius: 17,
            backgroundColor: ProjectConst.greyBackground,
            child: Icon(
              Icons.edit,
              size: 17,
              color: Colors.black,
            ),
          ),
        ],
      ),
      //yazılan şartı kontrol eder.true dönüyorsa ilkini yapar false dönüyorsa ikinci ihtimale bakar
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10.0),
            height: 30,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            decoration: ShapeDecoration(
                shape: StadiumBorder(), color: ProjectConst.greyBackground),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Ara",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Expanded(
              child: pageIndex == 0
                  ? const RecentChats()
                  : pageIndex == 1
                      ? const CallPage()
                      : pageIndex == 2
                          ? const PeopleScreen()
                          : pageIndex == 3
                              ? const StoryPage()
                              : const SettingsScreen())
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Sohbetler',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_back),
            label: 'Aramalar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Kişiler',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.splitscreen_outlined),
            label: 'Hikayeler',
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
