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
        ],
      ),
    );
  }
}

// todo StoryItem Extract Widget
class StoryItem extends StatelessWidget {
  final String title;

  // todo constructor (name: argument)
  // const StoryItem({
  //   Key? key,
  //   required this.title
  // }) : super(key: key);
  const StoryItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        children: [
          // todo Circle stack container story
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(80 / 2),
                ),
              ),
              Container(
                width: 77,
                height: 77,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(77 / 2),
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),
                  // photo NetworkImage
                  image: const DecorationImage(
                    image: NetworkImage("https://picsum.photos/200"),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          // const Text("Story 1"),
          Text(title),
        ],
      ),
    );
  }
}
