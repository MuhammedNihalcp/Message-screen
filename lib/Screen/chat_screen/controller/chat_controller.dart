import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:message_screen/Screen/chat_screen/model/chat_model.dart';

class ChatController extends GetxController {
  TextEditingController messageController = TextEditingController();
  final List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];

  
}
