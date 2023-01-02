import 'package:flutter/material.dart';
import 'package:responsive_chat_app/common/widgets/message_type_area.dart';

import '../../constants/ProjecConstants.dart';

class CustomMessageBar extends StatelessWidget {
  const CustomMessageBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Colors.white,
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: Icon(
                size: 20,
                Icons.add_circle,
                color: Colors.blue,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: Icon(
                size: 20,
                Icons.photo,
                color: Colors.blue,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: Icon(
                size: 20,
                Icons.sticky_note_2,
                color: Colors.blue,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: Icon(
                size: 20,
                Icons.gif_box,
                color: Colors.blue,
              ),
            ),
            MessageTypeArea(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Icon(
                size: 20,
                Icons.thumb_up_alt_rounded,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
