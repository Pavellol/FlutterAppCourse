import 'package:desingcode/components/searchfield_widget.dart';
import 'package:desingcode/components/sidebar_button.dart';
import 'package:desingcode/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class HomeScreenNavBar extends StatelessWidget {
  HomeScreenNavBar({required this.triggerAnimation});

  final VoidCallback triggerAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(triggerAnimation: triggerAnimation,),
          SearchFieldWidget(),
          Icon(
              Icons.notifications,
              color: kPrimaryLabelColor
          ),
          SizedBox(
            width: 16.0,
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: CircleAvatar(radius: 18.0,
              backgroundImage: AssetImage('assert/images/profile.jpg'
              ),
            ),
          )
        ],
      ),
    );
  }
}

