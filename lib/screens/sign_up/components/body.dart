import 'package:flutter/material.dart';
import 'package:sampleproject/components/default_button.dart';
import 'package:sampleproject/components/form_error.dart';
import 'package:sampleproject/constants.dart';
import 'package:sampleproject/screens/sign_up/components/sign_up_form.dart';
import 'package:sampleproject/size_config.dart';

import '../../../components/custom_sufix_icon.dart';
import '../../../components/socal_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(),
      ),
    );
  }
}

class SingleChildScrollView extends StatelessWidget {
  const SingleChildScrollView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.02,
        ),
        Text(
          "Register Account",
          style: headingStyle,
        ),
        Text(
          "Complete Your Details or Continue\n with Social Media",
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.07,
        ),
        SignUpForm(),
        SizedBox(
          height: SizeConfig.screenHeight * 0.07,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialCard(
              icon: "assets/icons/facebook-2.svg",
              press: () {},
            ),
            SocialCard(
              icon: "assets/icons/google-icon.svg",
              press: () {},
            ),
            SocialCard(
              icon: "assets/icons/twitter.svg",
              press: () {},
            ),
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Text(
          "By Continuing You Confirm to Agree \nwith Our Terms & Conditions",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
