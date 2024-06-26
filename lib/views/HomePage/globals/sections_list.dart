import 'package:flutter/material.dart';
import 'package:resume_builder_app/globals/routes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List sectionsList = [
  {
    'icon': FontAwesomeIcons.user,
    'name': "Personal Details",
    'path': Routes.personalDetails,
  },
  {
    'icon': Icons.school,
    'name': "Education",
    'path': Routes.education,
  },
  {
    'icon': Icons.supervised_user_circle,
    'name': "Experience",
    'path': Routes.experience,
  },
  {
    'icon': Icons.psychology,
    'name': "Skills",
    'path': Routes.skills,
  },
  {
    'icon': FontAwesomeIcons.bullseye,
    'name': "Objective",
    'path': Routes.objective,
  },
  {
    'icon': FontAwesomeIcons.asterisk,
    'name': "Reference",
    'path': Routes.reference,
  },
];
