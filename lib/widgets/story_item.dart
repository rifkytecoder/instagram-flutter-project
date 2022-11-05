import 'package:flutter/material.dart';

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
