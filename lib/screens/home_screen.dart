import 'package:chat_and_meeting_flutter/data/upcomind_data.dart';
import 'package:chat_and_meeting_flutter/screens/live_room_screen.dart';
import 'package:chat_and_meeting_flutter/screens/meeting_screen.dart';
import 'package:chat_and_meeting_flutter/screens/profile_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int newindex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          backgroundColor: Colors.deepPurple,
          items: <Widget>[
            Icon(
              Icons.date_range,
              size: 30,
              color: Colors.deepPurple,
            ),
            Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.redAccent,
                    Colors.deepPurple,
                  ],
                ),
              ),
              child: Icon(
                Icons.add_box,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.person,
              size: 30,
              color: Colors.deepPurple,
            ),
          ],
          onTap: (index) {
            setState(() {
              newindex = index;
            });
          },
        ),
        body: newindex == 0
            ? HomePage()
            : newindex == 1
                ? LivePage()
                : ProfilePage(),
      ),
    );
  }
}
