import 'package:flutter/material.dart';
import 'package:resume_builder_app/views/Education/education_info.dart';
import 'package:resume_builder_app/views/Experience/experience.dart';
import 'package:resume_builder_app/views/HomePage/home_page.dart';
import 'package:resume_builder_app/views/Objective/objective.dart';
import 'package:resume_builder_app/views/PersonalDetails/personal_detail.dart';
import 'package:resume_builder_app/views/Reference/reference.dart';
import 'package:resume_builder_app/views/RegisterPage/register_page.dart';
import 'package:resume_builder_app/views/Skills/skills.dart';
import 'package:resume_builder_app/views/SplashScreen/splash_screen.dart';

class Routes {
  static String splashScreen = '/';
  static String myHome = 'MyHome';
  static String personalDetails = 'PersonalDetails';
  static String education = 'Education';
  static String experience = 'Experience';
  static String skills = 'Skills';
  static String objective = 'Objective';
  static String reference = 'Reference';
  static String register = 'Register';

  static Map<String, WidgetBuilder> myRoutes = {
    splashScreen: (context) => const SplashScreen(),
    myHome: (context) => const HomePage(),
    personalDetails: (context) => const PersonalDetail(),
    education: (context) => const Education(),
    experience: (context) => const Experience(),
    objective:(context) => const Objective(),
    reference:(context) => const Reference(),
    skills: (context) => const Skills(),
    register:(context) => const RegisterPage(),
  };
}
