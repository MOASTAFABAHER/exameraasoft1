import 'package:exameraasoft1/classes/explore_cities.dart';
import 'package:exameraasoft1/component/circle_button.dart';
import 'package:exameraasoft1/component/custom_text.dart';
import 'package:exameraasoft1/component/custom_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../classes/icons.dart';

class IconsWidget extends StatelessWidget {
  final IconsClass iconsClass;
  IconsWidget({required this.iconsClass});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CircleButton(
          image: iconsClass.image,
          color: iconsClass.color,
          mini: iconsClass.mini),
      CustomTextButton(
        exploreCities: ExploreCities(color: Colors.grey, text: iconsClass.text),
      )
    ]);
  }
}
