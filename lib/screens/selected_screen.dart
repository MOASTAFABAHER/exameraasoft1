import 'package:exameraasoft1/classes/categoreis_class.dart';
import 'package:exameraasoft1/classes/explore_cities.dart';
import 'package:exameraasoft1/component/custom_text.dart';
import 'package:exameraasoft1/component/custom_text_button.dart';
import 'package:exameraasoft1/component/main_cuntainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../classes/icons.dart';
import '../component/icons.dart';

class SlectedScreen extends StatelessWidget {
  String image;
  String text;
  SlectedScreen({required this.image, required this.text});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        centerTitle: false,
        title: CustomText(
          text: 'Back',
          color: Colors.black,
          fontSize: 14,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(image: NetworkImage(this.image)))),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Row(
              children: [
                Container(
                  child: Expanded(
                    child: ListView.separated(
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return IconsWidget(iconsClass: iconsDataList[index]);
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 25,
                          );
                        },
                        itemCount: iconsDataList.length),
                  ),
                )
              ],
            )),
            Divider(
              thickness: 1,
              color: Colors.grey[500],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomText(
                      text: this.text,
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        CustomText(
                          text: 'Iltay',
                          color: Colors.grey[800]!,
                          fontSize: 14,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.stars),
                        CustomText(text: '43216', color: Colors.grey[800]!),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.map),
                        CustomText(
                          text: 'mapDirection',
                          color: Color(0xffc05e2b),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: 'Descreption', color: Colors.black),
                        Text(
                          'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[800]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: CustomTextButton(
                      exploreCities: ExploreCities(
                          text: '\$490', color: Color(0xffc05e2b))),
                ),
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffc05e2b)),
                  child: CustomTextButton(
                      exploreCities: ExploreCities(
                          text: '\$490', color: Color(0xffc05e2b))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
