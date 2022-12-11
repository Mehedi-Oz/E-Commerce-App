import 'package:flutter/material.dart';
import 'package:sampleproject/components/default_button.dart';
import 'package:sampleproject/constants.dart';
import 'package:sampleproject/screens/otp/components/otp_form.dart';
import 'package:sampleproject/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              Text("We Have Sent Your Code to +1234566"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  //resend OTP
                },
                child: Text(
                  "Rsend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This Code Will Expire in"),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: ((context, value, child) => Text(
                "00:${value.toInt()}",
                style: TextStyle(color: kPrimaryColor),
              )),
          onEnd: () {},
        ),
      ],
    );
  }
}
