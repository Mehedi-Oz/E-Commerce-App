import 'package:flutter/widgets.dart';
import 'package:sampleproject/screens/sign_in/sign_in_scrren.dart';
import 'package:sampleproject/screens/splash/splash_screen.dart';

// Used name routes
// All routes will available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
