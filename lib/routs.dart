import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:sampleproject/screens/complete_profile/complete_profile_screen.dart';
import 'package:sampleproject/screens/forgot_password/forgot_password_scrren.dart';
import 'package:sampleproject/screens/login_sucess/login_success_screen.dart';
import 'package:sampleproject/screens/sign_in/sign_in_scrren.dart';
import 'package:sampleproject/screens/sign_up/sign_up_screen.dart';
import 'package:sampleproject/screens/splash/splash_screen.dart';

// Used name routes
// All routes will available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  forgotPasswordScreen.routeName: (context) => forgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpscreen.routeName: (context) => SignUpscreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
};
