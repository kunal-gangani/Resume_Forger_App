import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text("Skills"),
        gradient: const LinearGradient(
          colors: [
            Colors.green,
            Colors.lightGreen,
            Colors.lightGreenAccent,
          ],
        ),
      ),
      body: const Column(
        children: [
          Text("Skills"),
        ],
      ),
    );
  }
}
