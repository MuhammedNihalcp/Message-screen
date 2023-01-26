import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:message_screen/core/color/colors.dart';
import 'package:message_screen/core/color/size/size.dart';

class AppBarDetails extends StatelessWidget {
  const AppBarDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
    );
  }
}
