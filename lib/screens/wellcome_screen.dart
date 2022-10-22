import 'package:exameraasoft1/component/slider_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned.fill(
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.network(
                'https://images.pexels.com/photos/4385736/pexels-photo-4385736.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              ),
            ),
          ),
          Expanded(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'Explore Beauty ',
                          style: TextStyle(
                              color: Color(0xff25161a),
                              fontSize: 35,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'Of Journey ',
                          style: TextStyle(
                            color: Color(0xff25161a),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Everything you can imagine, is here',
                          style: TextStyle(
                            color: Color(0xff25161a),
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        ContainerSlier(),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'privacy policy',
                            style: TextStyle(
                              color: Color(0xffecdbcc),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
