import 'package:flutter/material.dart';

// todo InfoItem
class InfoItem extends StatelessWidget {
  final String title;
  final String value;

  // constructor
  const InfoItem(this.title, this.value);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value, // 999
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(title), // posts
      ],
    );
  }
}
