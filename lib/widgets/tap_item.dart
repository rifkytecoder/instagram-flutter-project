// todo TapItem extract Widget
import 'package:flutter/material.dart';

class TapItem extends StatelessWidget {
  final IconData icon;
  final bool active;

// position argumen
  const TapItem(this.icon, this.active);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          // color: Colors.amber,
          // border dibagian bawah dgn tebah 1
          border: Border(
            bottom: BorderSide(
              width: 1,
              // jika aktif akan berwarna hitam
              color: active == true ? Colors.black : Colors.white,
            ),
          ),
        ),
        // child: const Icon(Icons.grid_on_outlined),
        child: Icon(icon),
      ),
    );
  }
}