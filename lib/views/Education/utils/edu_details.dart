import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget eduDetails() {
  return Container(
    height: 87.h,
    width: double.infinity,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.blue,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "BCA",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          "SDJ International College",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    ),
  );
}
