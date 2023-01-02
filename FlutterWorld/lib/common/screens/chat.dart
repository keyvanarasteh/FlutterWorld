import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:provider/provider.dart';
import 'package:responsive_chat_app/common/screens/user_info.dart';
import 'package:responsive_chat_app/common/widgets/custom_message_bar.dart.dart';
import 'package:responsive_chat_app/constants/ProjecConstants.dart';

import '../../state_manegement/my_state.dart';

class ChatScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  ChatScreen({super.key}); // Cre
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    var screenWidth = MediaQuery.of(context).size.width;
    var screenType = "";
    if (screenWidth < 625) {
      screenType = "Phone";
    } else if (screenWidth >= 625 && screenWidth < 768) {
      screenType = "Tablet";
    } else {
      screenType = "Large";
    }
    return Scaffold(
      backgroundColor: Colors.white,
      key: _key,
      endDrawer: Drawer(
        child: UserInfoScreen(
            userName: Provider.of<PersonInfo>(context, listen: true).personName,
            imagePath:
                Provider.of<PersonInfo>(context, listen: true).personImage),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ProjectConst.iconsColor, //change your color here
        ),
        backgroundColor: ProjectConst.barColor,
        elevation: 5,
        toolbarHeight: 50,
        title: Row(
          children: [
            Container(
              //resimleri gösterdiğimiz widget
              margin: const EdgeInsets.only(right: 5.0, left: 5.0),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                          Provider.of<PersonInfo>(context, listen: true)
                              .personImage),
                      fit: BoxFit.cover)),
            ),
            Text(
              "${Provider.of<PersonInfo>(context, listen: true).personName},$screenType",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ],
        ),
        actions: [
          /* IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.phone_outlined,
                color: Colors.blue,
              )),*/
          IconButton(
              onPressed: () {
                //ekran genişliğine göre kullanıcı detay sayfasına yönlendirme yapar
                if (screenWidth < 625) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => UserInfoScreen(
                            userName:
                                Provider.of<PersonInfo>(context, listen: true)
                                    .personName,
                            imagePath:
                                Provider.of<PersonInfo>(context, listen: true)
                                    .personImage),
                      ));
                } else {
                  _key.currentState!.openEndDrawer();
                }
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.blue,
              )),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: 'Selam bugün ne yapıyoruz',
                  isSender: false,
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: 'Bugün pek keyfim yok planı erteleyelim',
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  tail: true,
                  sent: true,
                ),
                DateChip(
                  date: DateTime(now.year, now.month, now.day - 2),
                ),
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: 'Nasıl oldun ?',
                  isSender: false,
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: 'Teşekkür ederim çok daha iyiyim',
                  color: Color(0xFFE8E8EE),
                  tail: true,
                  sent: true,
                  seen: true,
                  delivered: true,
                ),
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: 'Sevindim. Dikkat et kendine',
                  isSender: false,
                  color: Color(0xFF1B97F3),
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                DateChip(
                  date: new DateTime(now.year, now.month, now.day - 1),
                ),
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: 'bubble special one with tail',
                  color: Color(0xFFE8E8EE),
                  seen: true,
                ),
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: 'bubble special one without tail',
                  isSender: false,
                  tail: true,
                  color: Color(0xFF1B97F3),
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: 'bubble special one without tail',
                  tail: true,
                  color: Color(0xFFE8E8EE),
                  sent: true,
                ),
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: 'bubble special tow with tail',
                  isSender: false,
                  color: Color(0xFF1B97F3),
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                DateChip(
                  date: now,
                ),
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: 'bubble special tow with tail',
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  sent: true,
                ),
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: 'bubble special tow without tail',
                  isSender: false,
                  tail: true,
                  color: Color(0xFF1B97F3),
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: 'bubble special tow without tail',
                  tail: true,
                  color: Color(0xFFE8E8EE),
                  delivered: true,
                ),
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: 'bubble special three without tail',
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                ),
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: 'bubble special three with tail',
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                ),
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: "bubble special three without tail",
                  color: Color(0xFFE8E8EE),
                  tail: true,
                  isSender: false,
                ),
                BubbleNormal(
                  bubbleRadius: 5.0,
                  text: "bubble special three with tail",
                  color: Color(0xFFE8E8EE),
                  tail: true,
                  isSender: false,
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
          const CustomMessageBar()
          /*MessageBar(
            sendButtonColor: Colors.transparent,
            onSend: (_) => print(_),
            actions: [
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.send,
                    color: Colors.blue,
                    size: 24,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),*/
        ],
      ),
    );
  }
}
