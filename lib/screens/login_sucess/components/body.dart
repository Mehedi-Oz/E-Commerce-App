import 'package:flutter/material.dart';
import 'package:sampleproject/components/default_button.dart';
import 'package:sampleproject/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Text(
          "Login Successful!",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to Home",
            press: () {},
          ),
        ),
        Spacer(),
      ],
    );
  }
}
