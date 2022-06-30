import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:messenger_ui/constants.dart';

class ChatBottom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FaIcon(FontAwesomeIcons.circlePlus, color: kChatThemeColor,),
          Icon(Icons.camera_alt, color: kChatThemeColor,),
          FaIcon(FontAwesomeIcons.image, color: kChatThemeColor,),
          FaIcon(FontAwesomeIcons.microphone, color: kChatThemeColor,),
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            // width: (MediaQuery.of(context).size.width - 40)/2,
            child: Row(
              children: [
                Container(
                  height: 35,
                  // width: (MediaQuery.of(context).size.width - 50)/2,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                    color: kMainThemeColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Aa",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.tag_faces, color: kChatThemeColor,)
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.thumb_up_alt_sharp, color: kChatThemeColor,)
        ],
      ),
    );
  }
}
