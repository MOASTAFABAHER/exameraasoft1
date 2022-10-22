import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class IconsClass {
  String image;
  Color color;
  bool mini;
  String text;
  IconsClass(
      {required this.color,
      required this.image,
      required this.mini,
      required this.text});
}

List<IconsClass> iconsDataList = [
  IconsClass(
      color: Colors.black,
      image:
          'https://images.pexels.com/photos/47044/aircraft-landing-reach-injection-47044.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      mini: false,
      text: 'flights'),
  IconsClass(
      color: Colors.black,
      image:
          'https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&w=1600',
      mini: false,
      text: 'Hotels'),
  IconsClass(
      color: Colors.black,
      image:
          'https://images.pexels.com/photos/434450/pexels-photo-434450.jpeg?auto=compress&cs=tinysrgb&w=1600',
      mini: false,
      text: 'Transport'),
  IconsClass(
      color: Colors.black,
      image:
          'https://images.pexels.com/photos/47044/aircraft-landing-reach-injection-47044.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      mini: false,
      text: 'flights'),
];
