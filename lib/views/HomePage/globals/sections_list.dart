import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_builder_app/globals/routes.dart';

List sectionsList = [
  {
    'icon': FontAwesomeIcons.user,
    'name': "Personal Details",
    'address': Routes.personalDetails,
  },
  {
    'icon': Icons.school,
    'name': "Education",
    'address': Routes.educationPage,
  },
  {
    'icon': Icons.supervised_user_circle,
    'name': "Experience",
    'address': Routes.experiencePage,
  },
  {
    'icon': Icons.psychology,
    'name': "Skills",
    'address': Routes.skillsPage,
  },
  {
    'icon': FontAwesomeIcons.bullseye,
    'name': "Objective",
    'address': Routes.objectivesPage,
  },
  {
    'icon': FontAwesomeIcons.asterisk,
    'name': "Reference",
    'address': Routes.referencePage,
  },
];
