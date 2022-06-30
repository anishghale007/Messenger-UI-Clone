import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:messenger_ui/constants.dart';

class BottomNavigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Badge(
              badgeContent: Text('4', style: TextStyle(color: Colors.white),),
                child: Icon(
                    Icons.messenger, color: Colors.blueAccent),
            ),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.video, size: 21,),
            label: 'Calls',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.userGroup, size: 20,),
            label: 'People',),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.windowRestore, size: 21,),
            label: 'Stories',
        ),
      ],
    );
  }
}
