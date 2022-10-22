import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class ExploreCities {
  String text;
  Color color;
  ExploreCities({required this.text, required this.color});
}

List<ExploreCities> exploreCitiesData = [
  ExploreCities(text: 'All', color: Colors.grey),
    ExploreCities(text: 'Popular', color: Colors.grey),
      ExploreCities(text: 'Recommended', color: Colors.grey),
        ExploreCities(text: 'Most Viewed', color: Colors.grey),
   ExploreCities(text: 'recent', color: Colors.grey),
];
