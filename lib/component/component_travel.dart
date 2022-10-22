import 'package:exameraasoft1/classes/places.dart';
import 'package:exameraasoft1/component/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screens/selected_screen.dart';

class ComponentTravel extends StatelessWidget {
  final Places places;

  ComponentTravel({required this.places});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (contex) => SlectedScreen(
                      image: places.image,
                      text: places.text,
                    )));
      },
      child: Container(
        width: 141,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color(0xffecdbcc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
                image: NetworkImage(places.image),
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomText(
              text: places.text,
              color: Colors.black,
              fontSize: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: places.country,
                  color: Colors.grey[800]!,
                  fontSize: 14,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Expanded(
                    child: CustomText(
                      text: '${places.price}/person',
                      color: Colors.black,
                      fontSize: 8,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
