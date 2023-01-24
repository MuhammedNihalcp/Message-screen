import 'package:flutter/material.dart';
import 'package:message_screen/Screen/chat_screen/view/screen_chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenChats(),
    );
  }
}
