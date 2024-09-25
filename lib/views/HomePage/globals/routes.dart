import 'package:flutter/material.dart';
import 'package:resume_builder_app/views/Education/education_info.dart';
import 'package:resume_builder_app/views/Experience/experience.dart';
import 'package:resume_builder_app/views/Objective/objective.dart';
import 'package:resume_builder_app/views/PersonalDetails/personal_detail.dart';
import 'package:resume_builder_app/views/Reference/reference.dart';
import 'package:resume_builder_app/views/RegisterPage/register_page.dart';
import 'package:resume_builder_app/views/Skills/skills.dart';
import 'package:resume_builder_app/views/SplashScreen/splash_screen.dart';

class Routes {
  static String splashScreen = '/';
  static String registerPage = 'RegisterPage';
  static String homePage = 'HomePage';
  static String personalDetails = 'PersonalDetails';
  static String educationPage = 'EducationPage';
  static String experiencePage = 'ExperiencePage';
  static String skillsPage = 'SkillsPage';
  static String referencePage = 'ReferencePage';
  static String objectivePage = 'ObjectivePage';

  static Map<String, WidgetBuilder> myRoutes = {
    Routes.splashScreen: (context) => const SplashScreen(),
    Routes.registerPage: (context) => const RegisterPage(),
    Routes.personalDetails: (context) => const PersonalDetail(),
    Routes.educationPage: (context) => const Education(),
    Routes.educationPage: (context) => const Experience(),
    Routes.referencePage: (context) => const Reference(),
    Routes.skillsPage: (context) => const Skills(),
    Routes.objectivePage: (context) => const Objective(),
  };
}
