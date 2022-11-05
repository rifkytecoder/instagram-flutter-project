import 'package:flutter/material.dart';

import '../widgets/info_item.dart';
import '../widgets/profile_picture.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // hilangkan bayangan shadow linenya
        centerTitle: false,
        //todo title row
        title: Row(
          children: const [
            Text(
              "RifkyTe",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                // todo extract widget ProfilePicture
                const ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      // todo extract widget Column InfoItem
                      InfoItem("Posts", "999"),
                      InfoItem("Follower", "999"),
                      InfoItem("Following", "999"),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
