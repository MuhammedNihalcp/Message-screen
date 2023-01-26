import 'package:bubble/bubble.dart';

import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:message_screen/Screen/chat_screen/controller/chat_controller.dart';
import 'package:message_screen/Screen/chat_screen/view/widget/appbar_detail.dart';
import 'package:message_screen/core/color/colors.dart';
import 'package:message_screen/core/color/size/size.dart';

class ScreenChats extends StatelessWidget {
  ScreenChats({super.key});

  final chatController = Get.put(ChatController());

  DateTime times = DateTime.now();

  final width = Get.size.width;
  final height = Get.size.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(
            height * 0.02,
          ),
          child: const SizedBox(),
        ),
        flexibleSpace: const AppBarDetails(),
      ),
      body: GetBuilder<ChatController>(
        builder: (controller) => Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatController.messages.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8, top: 8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment:
                            chatController.messages[index].messageType ==
                                    "receiver"
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                chatController.messages[index].isRead == false
                                    ? null
                                    : Icons.done_all,
                                size: 15,
                                color: dartGreen,
                              ),
                              chatController.messages[index].messageType ==
                                      "sender"
                                  ? Text(
                                      DateFormat('hh:mm a')
                                          .format(times)
                                          .toString(),
                                      style: const TextStyle(
                                        fontSize: 8,
                                        color: colorGray,
                                      ),
                                    )
                                  : const SizedBox(),
                            ],
                          ),
                          Bubble(
                            nipWidth: 6,
                            nipHeight: 5,
                            nipRadius: 1,
                            radius: const Radius.circular(20),
                            alignment:
                                chatController.messages[index].messageType ==
                                        "receiver"
                                    ? Alignment.topLeft
                                    : Alignment.topRight,
                            nip: chatController.messages[index].messageType ==
                                    "receiver"
                                ? BubbleNip.leftBottom
                                : BubbleNip.rightBottom,
                            color: chatController.messages[index].messageType ==
                                    "receiver"
                                ? colorWihte
                                : dartGreen,
                            child: Text(
                                chatController.messages[index].messageContent),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            MessageBar(
              sendButtonColor: const Color.fromARGB(255, 255, 19, 15),
              messageBarColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}


