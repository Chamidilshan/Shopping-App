import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/screens/landing_page.dart';
import 'constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ODEL',
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      theme: ThemeData(
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 14.0,
            letterSpacing: 0.16,
            color: textNewColor
          ),
        )
      ),
    );
  }
}

