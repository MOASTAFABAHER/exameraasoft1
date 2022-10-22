import 'package:exameraasoft1/classes/explore_cities.dart';
import 'package:exameraasoft1/component/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextButton extends StatefulWidget {
  final ExploreCities exploreCities;

  CustomTextButton({required this.exploreCities});

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          isSelected = !isSelected;
          setState(() {});
        },
        child: CustomText(
          text: this.widget.exploreCities.text,
          fontSize: 14,
          color: isSelected == true
              ? Colors.black
              : this.widget.exploreCities.color,
        ));
  }
}
