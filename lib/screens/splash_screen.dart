import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demoapp/constants/dimension.dart';
import 'package:flutter_demoapp/screens/home_screen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Get.off(const HomeScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: mHeight * 0.3,
          width: mWidth * 0.8,
          child: Image.asset("assets/images/splash.png"),
        ),
      ),
    );
  }
}
