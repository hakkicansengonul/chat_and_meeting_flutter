import 'package:chat_and_meeting_flutter/Animation/Fade_Animation.dart';
import 'package:flutter/material.dart';

List LiveRoomDataList = [
  LiveRoomData(
    "https://media.giphy.com/media/l378gW7GaWG6Leeas/source.gif",
    23,
    1,
    3,
  ),
  LiveRoomData(
    "https://media.giphy.com/media/Wi7QlqrOHYJJm/source.gif",
    12,
    3,
    2,
  ),
  LiveRoomData(
    "https://media.giphy.com/media/yoJC2GnSClbPOkV0eA/source.gif",
    11,
    4,
    6,
  ),
  LiveRoomData("https://media.giphy.com/media/m8crpzTJFRDPhqqhXJ/source.gif",
      44, 12, 33),
];

class LiveRoomData extends StatelessWidget {
  final String imgUrl;
  final int numberLike;
  final int numberComment;
  final int numberShare;

  const LiveRoomData(
    this.imgUrl,
    this.numberLike,
    this.numberComment,
    this.numberShare,
  );
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imgUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: FadeAnimation(
          1.2,
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 400.0,
              ),
              LiveChildren(
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  numberLike),
              LiveChildren(
                  Icon(
                    Icons.comment,
                    color: Colors.white,
                  ),
                  numberComment),
              LiveChildren(
                  Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  numberShare),
            ],
          ),
        ),
      ),
    );
  }
}

Widget LiveChildren(Icon icon, int number) {
  return Container(
    height: 100.0,
    width: 100.0,
    child: Column(
      children: [
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.redAccent,
                  Colors.deepPurple,
                ],
              ),
              shape: BoxShape.circle),
          child: icon,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          "$number\k",
          style: TextStyle(color: Colors.white, fontSize: 17.0),
        ),
      ],
    ),
  );
}
