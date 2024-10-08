import 'package:flutter/material.dart';
import 'package:resume_builder_app/views/Education/education_info.dart';
import 'package:resume_builder_app/views/Experience/experience.dart';
import 'package:resume_builder_app/views/HomePage/home_page.dart';
import 'package:resume_builder_app/views/Objective/objective.dart';
import 'package:resume_builder_app/views/PersonalDetails/personal_detail.dart';
import 'package:resume_builder_app/views/Reference/reference.dart';
import 'package:resume_builder_app/views/Skills/skills.dart';
import 'package:resume_builder_app/views/SplashScreen/splash_screen.dart';

class Routes {
  static String splashScreen = '/';
  static String homePage = 'home_page';
  static String personalDetails = 'personal_details';
  static String educationPage = 'education_page';
  static String experiencePage = 'experience_page';
  static String skillsPage = 'skills_page';
  static String objectivesPage = 'objectives_page';
  static String referencePage = 'reference_page';

  static Map<String, WidgetBuilder> myRoutes = {
    Routes.splashScreen: (context) => const SplashScreen(),
    Routes.homePage: (context) => const HomePage(),
    Routes.personalDetails: (context) => const PersonalDetail(),
    Routes.educationPage: (context) => const Education(),
    Routes.experiencePage: (context) => const Experience(),
    Routes.skillsPage: (context) => const Skills(),
    Routes.objectivesPage: (context) => const Objective(),
    Routes.referencePage: (context) => const Reference(),
  };
}
