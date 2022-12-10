import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:sampleproject/screens/forgot_password/forgot_password_scrren.dart';
import 'package:sampleproject/screens/login_success/login_sucess_screen.dart';
import 'package:sampleproject/screens/sign_in/sign_in_scrren.dart';
import 'package:sampleproject/screens/splash/splash_screen.dart';

// Used name routes
// All routes will available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  forgotPasswordScreen.routeName: (context) => forgotPasswordScreen(),
  LoginSucessScreen.routeName: (context) => LoginSucessScreen(),
};
