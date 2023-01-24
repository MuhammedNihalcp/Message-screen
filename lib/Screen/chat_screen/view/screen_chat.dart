import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:message_screen/Screen/chat_screen/controller/chat_controller.dart';
import 'package:message_screen/core/color/colors.dart';
import 'package:message_screen/core/color/size/size.dart';

class ScreenChats extends StatelessWidget {
  ScreenChats({super.key});

  final chatController = Get.put(ChatController());

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
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: dartGreen,
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/premium-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg?w=2000"),
                  maxRadius: 20,
                ),
                kWidth12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      kHeigh2,
                      const Text(
                        "Kriss Benwat",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      kHeigh2,
                      Text(
                        "Medical Student",
                        style: detailsTextStyle,
                      ),
                      kHeigh2,
                      Text(
                        'Altal State Medical University',
                        style: detailsTextStyle,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: GetBuilder<ChatController>(
        builder: (controller) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: chatController.messages.length,
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.only(
                    left: 14, right: 14, top: 10, bottom: 10),
                child: Align(
                  alignment:
                      (chatController.messages[index].messageType == "receiver"
                          ? Alignment.topLeft
                          : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (chatController.messages[index].messageType ==
                              "receiver"
                          ? Colors.grey.shade200
                          : Colors.blue[200]),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      chatController.messages[index].messageContent,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
