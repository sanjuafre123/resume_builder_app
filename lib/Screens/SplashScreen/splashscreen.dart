import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume_builder_app/Utils/Color/Color_List.dart';

import '../EnterScreen/enterscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const EnterScreen(),
        ),
      );
    });
  }
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: color3,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height * 0.25,
                  width: width * 0.55,
                  decoration: BoxDecoration(
                    color: Colors.black,

                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/bg2.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
