import 'package:flutter/material.dart';

import '../../constants/ProjecConstants.dart';

class MessageTypeArea extends StatelessWidget {
  const MessageTypeArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        decoration: ShapeDecoration(
            shape: StadiumBorder(), color: ProjectConst.greyBackground),
      ),
    );
  }
}
