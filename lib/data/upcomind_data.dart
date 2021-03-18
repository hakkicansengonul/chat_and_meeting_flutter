import 'package:flutter/material.dart';

List UpcomingContainerList = [
  UpcomingContainer(),
  UpcomingContainer(),
  UpcomingContainer(),
];

class UpcomingContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.redAccent.withOpacity(0.7),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Container(
          height: 230.0,
          width: 370.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.indigo,
                Colors.indigo,
                Colors.redAccent,
                Colors.indigo,
                Colors.indigo,
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Wed, 15 Feb, 4PM-5PM",
                  style: TextStyle(color: Colors.white.withOpacity(.7)),
                ),
                Text(
                  "Daily meeting with team",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 100.0,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50.0,
                        width: 150.0,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Upcomingimg(
                                  "https://cdn.pixabay.com/photo/2018/02/20/20/52/people-3168830__480.jpg"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40.0),
                              child: Upcomingimg(
                                  "https://cdn.pixabay.com/photo/2017/09/20/12/12/girl-2768346__480.jpg"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 80.0),
                              child: Upcomingimg(
                                  "https://cdn.pixabay.com/photo/2020/08/21/08/46/african-5505598__480.jpg"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.blue,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Join",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.0),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
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

Widget Upcomingimg(String imgUrl) {
  return Container(
    height: 80.0,
    width: 80.0,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover)),
  );
}
