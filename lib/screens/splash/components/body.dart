import 'package:flutter/material.dart';
import 'package:sampleproject/constants.dart';
import 'package:sampleproject/size_config.dart';

import '../components/splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "image": "assets/images/splash_1.png",
      "text": "Welcome to Space! Let's Shop!"
    },
    {
      "image": "assets/images/splash_2.png",
      "text": "Welcome to Space! Let's Shop!"
    },
    {
      "image": "assets/images/splash_3.png",
      "text": "Welcome to Space! Let's Shop!"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContant(
                  image: "assets/images/splash_1.png",
                  text: "Welcome to Space! Let's Shop!",
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
