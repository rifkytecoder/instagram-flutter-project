import 'package:flutter/material.dart';

import '../widgets/info_item.dart';
import '../widgets/profile_picture.dart';
import '../widgets/story_item.dart';
import '../widgets/tap_item.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 15),
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
          ),
          // box space
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            // todo text username
            child: Text(
              "rifkyte",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          // box space
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            // todo RichText 'jdi gak perlu buat Row untuk sebuah text
            child: RichText(
              text: const TextSpan(
                  text:
                      "Mobile Developer Flutter, Design Illustrator 2D and Modelling 3D \n",
                  children: [
                    TextSpan(
                        text: "#hastag ", style: TextStyle(color: Colors.blue)),
                    TextSpan(
                        text: "#flutter ",
                        style: TextStyle(color: Colors.blue)),
                    TextSpan(
                        text: "#illustration ",
                        style: TextStyle(color: Colors.blue)),
                  ]),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            // todo text link
            child: Text(
              "Link goes here",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            // todo Bottom Edit Profile
            child: OutlinedButton(
              onPressed: () {},
              // style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              child: const Text(
                "Edit Profile",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            // todo Circle Story
            // agar bisa scroll ke kanan/horizontal
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  // todo StoryItem extract widget
                  StoryItem("Story 1"),
                  StoryItem("Story 2"),
                  StoryItem("Story 3"),
                  StoryItem("Story 4"),
                  StoryItem("Story 5"),
                  StoryItem("Story 6"),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          Row(
            children: const [
              // todo TapItem extract widget
              TapItem(Icons.grid_on_outlined, true),
              TapItem(Icons.person_pin_outlined, false),
              // Expanded(child: Icon(Icons.person_pin_outlined)),
            ],
          )
        ],
      ),
    );
  }
}

// todo TapItem extract Widget

// todo StoryItem Extract Widget

