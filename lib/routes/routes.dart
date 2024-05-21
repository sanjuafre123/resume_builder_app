
import 'package:flutter/material.dart';
import 'package:resume_builder_app/Screens/EnterScreen/enterscreen.dart';

import '../Screens/Login/LoginScreen.dart';
import '../Screens/SplashScreen/splashscreen.dart';
import '../Screens/dashboard/dashboardscreen.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> routes ={
    '/' : (context) => const SplashScreen(),
    '/Enter' : (context) => const EnterScreen(),
    '/Login' : (context) => const LoginScreen(),
    '/board' : (context) => const DashboardScreen(),
  };
}