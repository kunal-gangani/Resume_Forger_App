import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

Widget appbar({
  required BuildContext context,
}) {
  return GradientAppBar(
    automaticallyImplyLeading: false,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
      ),
    ),
    title: const Text(
      "Personal Details",
    ),
    gradient: LinearGradient(
      colors: [
        Colors.blue.shade600,
        Colors.blue.shade400,
        Colors.blue.shade200,
      ],
    ),
  );
}
