import 'package:chat_and_meeting_flutter/Animation/Fade_Animation.dart';
import 'package:chat_and_meeting_flutter/data/upcomind_data.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.indigo,
                Colors.deepPurple,
                Colors.redAccent,
                Colors.redAccent,
                Colors.indigo,
                Colors.deepPurple,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.0,
                ),
                FadeAnimation(
                  1.0,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.flash_on,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
                // SizedBox(height: 10.0,),

                FadeAnimation(
                  1.0,
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Events",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                FadeAnimation(
                  1.1,
                  Container(
                    height: 100.0,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          LiveProfile(
                              "https://avatars.githubusercontent.com/u/56843071?s=460&u=9285c334652104d0e8fab334bf7de72f35c1f729&v=4"),
                          LiveProfile(
                              "https://cdn.pixabay.com/photo/2016/11/22/21/42/adult-1850703_1280.jpg"),
                          LiveProfile(
                              "https://cdn.pixabay.com/photo/2020/10/05/08/04/boys-5628502__480.jpg"),
                          LiveProfile(
                              "https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814__480.jpg"),
                          LiveProfile(
                              "https://cdn.pixabay.com/photo/2015/03/03/08/55/portrait-657116__480.jpg"),
                        ],
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  1.3,
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0.0, -0.5),
                          color: Colors.redAccent.withOpacity(0.6),
                        ),
                      ],
                    ),
                    height: 600.0,
                    width: double.infinity,
                    child: DefaultTabController(
                      initialIndex: 0,
                      length: 3,
                      child: Scaffold(
                        appBar: AppBar(
                          title: Text(
                            "Meetings",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0),
                          ),
                          backgroundColor: Colors.deepPurple,
                          bottom: TabBar(
                            tabs: [
                              Tab(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.redAccent),
                                  child: Center(
                                      child: Text(
                                    "Upcoming",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.redAccent.withOpacity(.7),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Past",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.redAccent.withOpacity(.3),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Canceled",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        body: TabBarView(
                          children: [
                            Container(
                              color: Colors.deepPurple,
                              width: double.infinity,
                              child: ListView.builder(
                                itemCount: UpcomingContainerList.length,
                                itemBuilder: (context, index) {
                                  return UpcomingContainerList[index];
                                },
                              ),
                            ),
                            Container(
                              color: Colors.deepPurple,
                              width: double.infinity,
                              child: ListView.builder(
                                itemCount: UpcomingContainerList.length,
                                itemBuilder: (context, index) {
                                  return UpcomingContainerList[index];
                                },
                              ),
                            ),
                            Container(
                              color: Colors.deepPurple,
                              width: double.infinity,
                              child: ListView.builder(
                                itemCount: UpcomingContainerList.length,
                                itemBuilder: (context, index) {
                                  return UpcomingContainerList[index];
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget LiveProfile(String imgUrl) {
  return Padding(
    padding: EdgeInsets.only(right: 10.0),
    child: Container(
      height: 90.0,
      width: 90.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 3.0),
        image: DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover),
      ),
    ),
  );
}
