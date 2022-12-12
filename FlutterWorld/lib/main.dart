import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_chat_app/state_manegement/my_state.dart';
import 'home_page.dart';

void main() {
  //ChangeNotfierProvider : State management için hiyerarşinin en başından sarmala yaptık
  runApp(ChangeNotifierProvider(
      create: (context) => PersonInfo(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
