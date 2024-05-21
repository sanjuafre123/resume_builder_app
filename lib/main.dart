import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_builder_app/routes/routes.dart';

void main()
{
  runApp(const ResumeApp());
}

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: MyRoutes.routes,
    );
  }
}