import 'package:flutter/material.dart';
import 'package:sampleproject/components/default_button.dart';
import 'package:sampleproject/constants.dart';
import 'package:sampleproject/screens/complete_profile/complete_profile_screen.dart';
import 'package:sampleproject/size_config.dart';

import '../../../components/custom_sufix_icon.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              Text(
                "Complete Ypur Details or Continue \nwith Social Media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              CompleteProfileForm(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Text(
                "By Continuing You Confirm to Agree with\nTerms & Conditions",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
