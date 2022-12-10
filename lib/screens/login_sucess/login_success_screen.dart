import 'package:flutter/material.dart';
import 'package:sampleproject/screens/login_sucess/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Success"),
      ),
      body: Body(),
    );
  }
}
