import 'package:flutter/material.dart';

import '../../constants/ProjecConstants.dart';
import '../widgets/chat_person_card.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: ProjectConst.personName.length,
        itemBuilder: (BuildContext context, int index) {
          return ChatPersonCard(
            imagesPath: ProjectConst.imagesPath[index],
            personName: ProjectConst.personName[index],
          );
        });
  }
}
