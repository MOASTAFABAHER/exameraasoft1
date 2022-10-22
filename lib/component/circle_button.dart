import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CircleButton extends StatelessWidget {
  String image;
  Color color;
  bool mini;
  CircleButton({required this.image, required this.color, required this.mini});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      mini: mini,
      onPressed: () {},
      child: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(this.image),
      ),
    );
  }
}
