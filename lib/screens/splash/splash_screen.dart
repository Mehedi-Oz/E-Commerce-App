import 'package:flutter/material.dart';
import 'package:sampleproject/screens/splash/components/body.dart';
import 'package:sampleproject/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/spllash";
  @override
  Widget build(BuildContext context) {
    // Have to call it on starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
