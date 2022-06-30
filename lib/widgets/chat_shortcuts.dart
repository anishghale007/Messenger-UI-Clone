import 'package:flutter/material.dart';
import 'package:messenger_ui/constants.dart';

class ChatShortcut extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 14),
          ShortcutHeads(firstName: 'Start', lastName: 'Call', icon: Icon(Icons.video_call, color: Colors.black, size: 30,),),
          SizedBox(width: 20),
          ShortcutHeads(firstName: 'James', lastName: 'Ghale', image: 'assets/images/person1.jpg',),
          SizedBox(width: 20),
          ShortcutHeads(firstName: 'Jisoo', lastName: 'Kim', image: 'assets/images/person2.jpg',),
          SizedBox(width: 20),
          ShortcutHeads(firstName: 'Jackson', lastName: 'Lama', image: 'assets/images/person3.jpg',),
          SizedBox(width: 20),
          ShortcutHeads(firstName: 'Lisa', lastName: 'Manoban', image: 'assets/images/person4.jpg',),
          SizedBox(width: 20),
          ShortcutHeads(firstName: 'Jason', lastName: 'Gurung', image: 'assets/images/person5.jpg',),
          SizedBox(width: 20),
          ShortcutHeads(firstName: 'Larry', lastName: 'Page', image: 'assets/images/person6.jpg',),
          SizedBox(width: 14),
        ],
      ),
    );
  }
}


class ShortcutHeads extends StatelessWidget {

  String firstName;
  String lastName;
  String? image;
  Icon? icon;

  ShortcutHeads({
    required this.firstName, required this.lastName, this.image, this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('$image'),
          child: icon,
          backgroundColor: kMainThemeColor,
          radius: 28,
        ),
        SizedBox(height: 10,),
        Text(firstName),
        Text(lastName),
      ],
    );
  }
}

