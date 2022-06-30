import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger_ui/constants.dart';
import 'package:messenger_ui/data/user_messages.dart';
import 'package:messenger_ui/screens/chat_details.dart';

class ChatTiles extends StatelessWidget {
  const ChatTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        userMessages.length,
        (index) => InkWell(
          onTap: () {
            Get.to(() => ChatDetails(), transition: Transition.native);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: [
                Container(
                  height: 55,
                  width: 55,
                  child: Stack(
                    children: [
                      userMessages[index]['story']
                          ? Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: kStoryBorderStyle,
                                  width: 3,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1.5),
                                child: Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        userMessages[index]['image'],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    userMessages[index]['image'],
                                  ),
                                ),
                              ),
                            ),
                      userMessages[index]['online']
                          ? Positioned(
                              top: 34,
                              left: 40,
                              child: Container(
                                width: 17,
                                height: 17,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kOnlineThemeColor,
                                  border:
                                      Border.all(color: Colors.white, width: 3),
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(userMessages[index]['name'], style: TextStyle(fontSize: 17, color: Colors.grey[700]),),
                    SizedBox(height: 2),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: Text(userMessages[index]['message'] + " ∙ " + userMessages[index]['date'],
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]), overflow: TextOverflow.ellipsis,),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
