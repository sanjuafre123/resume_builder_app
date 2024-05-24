

import 'package:flutter/material.dart';
import 'package:resume_builder_app/Screens/EnterScreen/enterscreen.dart';
import 'package:resume_builder_app/Screens/Setting/SettingScreen.dart';
import '../Screens/CV_Option/cv_optionscreen.dart';
import '../Screens/Contect/contectscreen.dart';
import '../Screens/Education/EducationScreen.dart';
import '../Screens/Login/LoginScreen.dart';
import '../Screens/Skills/skills.dart';
import '../Screens/SplashScreen/splashscreen.dart';
import '../Screens/WorkHistory/workScreen.dart';
import '../Screens/dashboard/dashboardscreen.dart';
import '../Screens/template/templatescreen.dart';


class MyRoutes{
  static Map<String, Widget Function(BuildContext)> routes ={
    '/' : (context) => const SplashScreen(),
    '/Enter' : (context) => const EnterScreen(),
    '/Login' : (context) => const LoginScreen(),
    '/board' : (context) => const DashboardScreen(),
    '/setting' : (context) => const SettingScreen(),
    '/template' : (context) => const TemplateScreen(),
    '/cvoption' : (context) => const CvOptionScreen(),
    '/Education' : (context) => const EducationScreen(),
    '/Work' : (context) => const WorkHistory(),
    '/Contact' : (context) => const ContactScreen(),
    '/skills' : (context) => const SkillScreen(),
  };
}