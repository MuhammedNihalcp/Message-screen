import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:message_screen/Screen/chat_screen/view/screen_chat.dart';
import 'package:message_screen/core/color/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData(
        backgroundColor: colorWihte
      ),
      debugShowCheckedModeBanner: false,
      home:  ScreenChats(),
    );
  }
}
