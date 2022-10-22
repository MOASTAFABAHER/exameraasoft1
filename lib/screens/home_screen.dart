import 'dart:math';

import 'package:exameraasoft1/classes/categoreis_class.dart';
import 'package:exameraasoft1/classes/explore_cities.dart';
import 'package:exameraasoft1/classes/icons.dart';
import 'package:exameraasoft1/classes/places.dart';
import 'package:exameraasoft1/component/circle_button.dart';
import 'package:exameraasoft1/component/component_travel.dart';
import 'package:exameraasoft1/component/custom_text.dart';
import 'package:exameraasoft1/component/custom_text_button.dart';
import 'package:exameraasoft1/component/main_cuntainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../component/icons.dart';

class HomeScreen extends StatefulWidget {
  bool currentIndex = false;
  HomeScreen({required this.currentIndex});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Wellcome Back',
                        color: Colors.grey[500]!,
                        fontSize: 14,
                        fontWeight: FontWeight.w100,
                      ),
                      CustomText(
                        text: 'Ronaldo Richrads',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  CircleButton(
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLdfngmptmXOxUz_Jkqn_eIh3N3V1IYB7Fax_XFEc&s',
                    color: Color(0xffc05e2b),
                    mini: true,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 30,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text(
                          'Discoverd a city ',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 16,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xffc05e2b),
                        ),
                        suffixIcon: Icon(
                          Icons.menu,
                          color: Colors.grey[800],
                        )),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        child: ListView.separated(
                            shrinkWrap: false,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (contex, index) {
                              return MainContainer(
                                  categories: categoriesData[index]);
                            },
                            separatorBuilder: (contex, index) {
                              return const SizedBox(
                                width: 10,
                              );
                            },
                            itemCount: categoriesData.length),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'Explore Cities',
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomTextButton(exploreCities: exploreCitiesData[0]),
                    CustomTextButton(exploreCities: exploreCitiesData[1]),
                    CustomTextButton(exploreCities: exploreCitiesData[2]),
                    CustomTextButton(exploreCities: exploreCitiesData[3]),
                    CustomTextButton(exploreCities: exploreCitiesData[2]),
                    CustomTextButton(exploreCities: exploreCitiesData[3]),
                  ],
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      child: Expanded(
                        child: ListView.separated(
                            shrinkWrap: false,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (contex, index) {
                              return ComponentTravel(places: placesData[index]);
                            },
                            separatorBuilder: (contex, index) {
                              return const SizedBox(
                                width: 15,
                              );
                            },
                            itemCount: placesData.length),
                      ),
                    ),
                  ],
                ),
              ),
              CustomText(
                text: 'Popular Categories',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
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
                            return IconsWidget(
                                iconsClass: iconsDataList[index]);
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffc05e2b),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.abc,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.forward,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.alarm,
            ),
            label: 'Alarm',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'menu',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Color(0xffc05e2b),
      ),
    );
  }
}
