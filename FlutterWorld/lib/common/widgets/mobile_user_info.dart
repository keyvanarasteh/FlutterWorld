import 'package:flutter/material.dart';

import '../../constants/ProjecConstants.dart';

class MobileUserInfo extends StatelessWidget {
  MobileUserInfo({Key? key, required this.imagePath, required this.userName})
      : super(key: key);
  String imagePath;
  String userName;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          Text(userName,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 15.0,
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 17,
                backgroundColor: ProjectConst.greyBackground,
                child: Icon(
                  Icons.account_circle,
                  size: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                "Profil",
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Özelleştrime",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Tema"),
              Icon(
                Icons.circle,
                size: 20,
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hızlı ifade"),
              Icon(
                Icons.thumb_up_alt_rounded,
                size: 20,
                color: Colors.blue,
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Text("Takma Adlar"),
          SizedBox(
            height: 15.0,
          ),
          Text("Diğer İşlemler", style: TextStyle(color: Colors.grey)),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Medya,dosya ve bağlantıları gör"),
              CircleAvatar(
                radius: 15,
                backgroundColor: ProjectConst.greyBackground,
                child: IconButton(
                  icon: Icon(
                    Icons.photo,
                    size: 15,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Konuşmada ara"),
              CircleAvatar(
                radius: 15,
                backgroundColor: ProjectConst.greyBackground,
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 15,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("$userName ile grup sohbeti oluştur"),
              CircleAvatar(
                radius: 15,
                backgroundColor: ProjectConst.greyBackground,
                child: IconButton(
                  icon: Icon(
                    Icons.group,
                    size: 15,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
