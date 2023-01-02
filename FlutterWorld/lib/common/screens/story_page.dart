import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hikaye Paylaş",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width * (2 / 3),
            child: Text(
              "Fotoğraf,video ve daha fazlasını 24 saatliğine paylaş.Sen ve arkadaşlarının paylaştığı hikayeler burada görünecek",
              style: TextStyle(fontSize: 13, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 60.0),
            child: ElevatedButton(
                onPressed: () {}, child: Text("HİKAYEYE EKLEME YAP")),
          )
        ],
      ),
    );
  }
}
