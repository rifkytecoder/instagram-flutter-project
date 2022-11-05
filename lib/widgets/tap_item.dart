import 'package:flutter/material.dart';

// todo TapItem extract Widget
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
              width: 2,
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
