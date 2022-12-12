import 'package:flutter/material.dart';

import '../../constants/ProjecConstants.dart';
import '../widgets/chat_person_card.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({super.key});

  @override
  Widget build(BuildContext context) {
    //benzer yapıları otomatik sıralamk için kullanılan Widget
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return ChatPersonCard(
            imagesPath: ProjectConst.imagesPath[index],
            personName: ProjectConst.personName[index],
          );
        });
  }
}
