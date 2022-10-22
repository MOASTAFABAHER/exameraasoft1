import 'dart:math';

import 'package:exameraasoft1/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContainerSlier extends StatefulWidget {
  ContainerSlier({super.key});

  @override
  State<ContainerSlier> createState() => _ContainerSlierState();
}

double sliderValue = 0;

class _ContainerSlierState extends State<ContainerSlier> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
      ),
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Swipe To Explore More',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            child: Slider(
                thumbColor: Color(0xffc05e2b),
                inactiveColor: Colors.grey.withOpacity(0),
                min: 0,
                max: 220,
                activeColor: Colors.black,
                value: sliderValue,
                onChanged: (value) {
                  sliderValue == 220
                      ? Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (contex) => HomeScreen(currentIndex: false,)))
                      : null;
                  setState(
                    () {
                      sliderValue = value;
                      print(sliderValue.round());
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
