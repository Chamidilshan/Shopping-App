import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/images/logo-big.png',
                width: 200.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'ODEL Shopping App',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

