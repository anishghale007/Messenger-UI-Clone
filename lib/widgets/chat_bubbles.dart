import 'package:flutter/material.dart';
import 'package:messenger_ui/constants.dart';

class ChatBubbles extends StatelessWidget {
  final bool fromMe;
  final String? image;
  final String message;
  final bool isContinue;

  ChatBubbles({required this.fromMe, required this.message, this.image, required this.isContinue});

  @override
  Widget build(BuildContext context) {
    // if the message is from the receiver/me
    if (fromMe) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      color: kChatThemeColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Text(
                        message,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if(!isContinue)
          SizedBox(height: 10),
        ],
      );
    } else {
      // if the message is from the sender/ not me
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('$image'),
                  radius: 15,
                ),
                SizedBox(width: 15),
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      color: kMainThemeColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Text(
                        message,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if(!isContinue)
          SizedBox(height: 10),
        ],
      );
    }
  }
}
