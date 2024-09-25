import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:developer';

Widget sectionListContainers({
  required BuildContext context,
  required Map e,
}) {
  return GestureDetector(
    onTap: () {
      log("Tap is clicked......");
      Navigator.pushNamed(
        context,
        e['address'],
      );
    },
    child: Card(
      color: Colors.blue.shade50,
      shadowColor: Colors.grey.shade700,
      elevation: 4,
      child: Container(
        height: 50.h,
        width: double.infinity,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              e['icon'],
              size: 30.w,
              color: Colors.blue.shade400,
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              e['name'],
              style: TextStyle(
                fontSize: 17.sp,
                color: Colors.grey.shade900,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
