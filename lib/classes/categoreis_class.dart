import 'package:flutter/material.dart';

class Categories {
  Color? color;
  bool? isSelected = false;
  String image;
  String text;
  // NetworkImage image;
  Categories(
      {this.isSelected, this.color, required this.image, required this.text});
}

List<Categories> categoriesData = [
  Categories(
      image:
          'https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      text: 'text'),
  Categories(
      image:
          'https://images.pexels.com/photos/994605/pexels-photo-994605.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      text: 'beaches'),
  Categories(
      image:
          'https://images.pexels.com/photos/5473050/pexels-photo-5473050.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      text: 'Gardens  ')
];
