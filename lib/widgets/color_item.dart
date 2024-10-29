import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color, required this.isPicked});

  final Color color;
  final bool isPicked;

  @override
  Widget build(BuildContext context) {
    return isPicked
        ? CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 22.5,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 23,
            backgroundColor: color,
          );
  }
}
