import 'package:flutter/cupertino.dart';

class PersonInfo extends ChangeNotifier {
  String personName = "Ryan O'Ruke";
  String personImage = "images/kisi1.png";

  //state de isim varisini değiştirmek için kullanılır
  void changeName(String name) {
    personName = name;
    //değişiklikten haberdar etme
    notifyListeners();
  }

  //state de resim yolunu değiştirmek için kullanılır
  void changeImage(String imagePath) {
    personImage = imagePath;
    //değişiklikten haberdar etme

    notifyListeners();
  }
}
