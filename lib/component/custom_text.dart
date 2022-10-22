import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomText extends StatelessWidget {
  String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color color;
  CustomText(
      {required this.text,
      this.fontSize,
      this.fontWeight,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        fontSize: this.fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
