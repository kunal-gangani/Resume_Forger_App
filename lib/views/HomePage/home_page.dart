import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume_builder_app/views/HomePage/globals/sections_list.dart';
import 'package:resume_builder_app/views/HomePage/utils/section_list_containers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: GradientAppBar(
        title: const Text("Resume Forger"),
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade600,
            Colors.blue.shade400,
            Colors.blue.shade200,
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sections",
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
              const Divider(),
              ...sectionsList.map(
                (e) => sectionListContainers(
                  context: context,
                  e: e,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
