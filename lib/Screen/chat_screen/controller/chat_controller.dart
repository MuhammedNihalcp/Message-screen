import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:message_screen/Screen/chat_screen/model/chat_model.dart';

class ChatController extends GetxController {
  TextEditingController messageController = TextEditingController();
  final List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver",isRead: false),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver",isRead: false),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender",isRead: true),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver",isRead: false),
    ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender",isRead: true),
  ];

  
}
