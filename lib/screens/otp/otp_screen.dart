import 'package:flutter/material.dart';
import 'package:sampleproject/screens/otp/components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OTP Veriication")),
      body: Body(),
    );
  }
}
