import 'package:chat_gpt_project/screens/chat_page.dart';
import 'package:chat_gpt_project/screens/enter_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const EnterPage(),
      routes: {
        EnterPage.id: (context) => const EnterPage(),
        ChatPage.id: (context) => const ChatPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
