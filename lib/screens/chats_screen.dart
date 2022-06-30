import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:messenger_ui/constants.dart';
import 'package:messenger_ui/widgets/chat_shortcuts.dart';
import 'package:messenger_ui/widgets/chat_tiles.dart';
import '../widgets/bottom_navigation.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Badge(
                            badgeContent: Text(
                              '4',
                              style: TextStyle(color: Colors.white),
                            ),
                            child: CircleAvatar(
                              backgroundImage:
                              AssetImage('assets/images/profile.jpg'),
                              backgroundColor: Colors.transparent,
                              radius: 20,
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Chats',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 27),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.black,
                            ),
                            backgroundColor: kMainThemeColor,
                          ),
                          SizedBox(width: 20),
                          CircleAvatar(
                            child: Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                            backgroundColor: kMainThemeColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 25,
                    ),
                    hintText: 'Search',
                    fillColor: kMainThemeColor,
                    filled: true,
                    contentPadding: EdgeInsets.all(8),
                    isDense: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: kMainThemeColor),),),
              ),
            ),
            ChatShortcut(),
            SizedBox(height: 15),
            ChatTiles(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
