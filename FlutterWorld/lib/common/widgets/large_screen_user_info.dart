import 'package:flutter/material.dart';

import '../../constants/ProjecConstants.dart';

class LargeScreenUserInfo extends StatelessWidget {
  LargeScreenUserInfo({Key? key, required this.imagePath,required this.userName}) : super(key: key);
  String imagePath;
  String userName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(top: 50.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.contain)),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              userName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            /*SizedBox(
                height: 15.0,
              ),
              Text("0555 555 55 55"),*/
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: ProjectConst.greyBackground,
                    child: IconButton(
                      icon: Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Text(
                    "Profil",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                width: 15.0,
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: ProjectConst.greyBackground,
                    child: IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Text(
                    "Sessize Al",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                width: 15.0,
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: ProjectConst.greyBackground,
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Text(
                    "Ara",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              height: 60,
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "Sohbeti Özelleştir",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: ProjectConst.iconsColor,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              height: 60,
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "Medya, Dosyalar Ve Bağlantılar",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: ProjectConst.iconsColor,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              height: 60,
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    "Gizlilik Ve Destek",
                    textAlign: TextAlign.start,
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: ProjectConst.iconsColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
