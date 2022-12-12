import 'package:flutter/material.dart';
import 'package:responsive_chat_app/home_pages/large_home_page.dart';
import 'home_pages/mobile_home_page.dart';
import 'home_pages/tablet_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Layout builder: ekran genişiliğini almak için kullanılır
    //MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 625) {
          return const MobileHomePage();
        } else if (constraints.maxWidth >= 625 && constraints.maxWidth < 768) {
          return const TabletHomePage();
        } else if (constraints.maxWidth >= 768) {
          return const LargeHomePage();
        } else {
          return Container(
            child: Text("Ekran genişlik ölçümünde hata var"),
          );
        }
      },
    );
  }
}
