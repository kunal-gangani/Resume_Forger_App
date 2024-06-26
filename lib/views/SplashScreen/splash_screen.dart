import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:resume_builder_app/globals/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.myHome);
    });
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Align(
        alignment: Alignment.center,
        child: Lottie.asset(
          'lib/views/SplashScreen/assets/splash_animation.json',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
