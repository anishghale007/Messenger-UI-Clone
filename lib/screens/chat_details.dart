import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:messenger_ui/constants.dart';
import 'package:messenger_ui/data/chat_messages.dart';
import 'package:messenger_ui/widgets/chat_bottom.dart';
import 'package:messenger_ui/widgets/chat_bubbles.dart';

class ChatDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(color: kChatThemeColor),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("assets/images/person1.jpg"),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "James",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.phone,
                    color: kChatThemeColor,
                    size: 20,
                  ),
                  SizedBox(width: 25),
                  FaIcon(
                    FontAwesomeIcons.video,
                    color: kChatThemeColor,
                    size: 20,
                  ),
                  SizedBox(width: 25),
                  FaIcon(
                    FontAwesomeIcons.circleInfo,
                    color: kChatThemeColor,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(right: 20,left: 20,top: 20,),
          itemCount: chatMessages.length,
          itemBuilder: (context, index) {
            return ChatBubbles(
              fromMe: chatMessages[index]['fromMe'],
              message: chatMessages[index]['message'],
              image: chatMessages[index]['image'],
              isContinue: chatMessages[index]['continue'],
            );
          }),
      bottomSheet: ChatBottom(),
    );
  }
}
