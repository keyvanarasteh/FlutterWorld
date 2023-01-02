import 'package:flutter/material.dart';
import 'package:responsive_chat_app/common/screens/chat.dart';
import 'package:responsive_chat_app/constants/ProjecConstants.dart';

import '../../state_manegement/my_state.dart';
import 'package:provider/provider.dart';

class ChatPersonCard extends StatelessWidget {
  //Consturctor class ilk çağrıldığında yapılamsı istenen işleveler
  ChatPersonCard({Key? key, required this.imagesPath, required this.personName})
      : super(key: key);
  String imagesPath;
  String personName;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return InkWell(
          onTap: (() {
            //mevut ekran genişliğini al
            var screenWidth = MediaQuery.of(context).size.width;
            print(screenWidth);
            if (screenWidth < 625) {
              // ekran tipi mobilse diğer ekrana yönlendir
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => ChatScreen()));
            }
            var provider = context.read<PersonInfo>();
            //State yönettiğimiz class taki fonksiyonları kullanark istenen değer elde ediliyor
            provider.changeName(personName);
            provider.changeImage(imagesPath);
          }),
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  color:
                      //state management classındaki isim değeri burdaki değere eşitse rengi gri yap
                      Provider.of<PersonInfo>(context, listen: true)
                                  .personName ==
                              personName
                          ? ProjectConst.greyBackground
                          : Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              height: 60,
              child: Row(
                children: [
                  Container(
                    //resimleri gösterdiğimiz widget
                    margin: const EdgeInsets.only(right: 5.0, left: 5.0),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(imagesPath), fit: BoxFit.cover)),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          //üst ve alttaki borderlar
                          /*border: Border(
                              bottom:
                                  BorderSide(color: Colors.grey, width: 0.2))*/
                          ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  personName,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600),
                                ),
                                //const Text("2:35pm")
                              ],
                            ),
                          ),
                          Text(
                            "That was greet!",
                            style: TextStyle(color: Colors.grey[400]),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}
