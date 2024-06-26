import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget sectionListContainers({required BuildContext context, required Map e}) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, e['path']);
    },
    child: Card(
      color: Colors.green.shade50,
      shadowColor: Colors.grey.shade700,
      elevation: 3,
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
              color: Colors.green.shade400,
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
