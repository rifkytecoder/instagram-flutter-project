import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // container gradient BG
        Container(
          width: 118,
          height: 118,
          decoration: BoxDecoration(
              // todo gradient
              gradient: const LinearGradient(
                colors: [
                  Colors.purple,
                  Colors.red,
                  Colors.yellow,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(118 / 2)),
        ),
        // container photo profile
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  // image photo profile
                  image: NetworkImage("https://picsum.photos/id/64/200/300"),
                  fit: BoxFit.cover),
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
              color: Colors.grey[300],
              // border cirle
              borderRadius: BorderRadius.circular(110 / 2)),
        )
      ],
    );
  }
}
