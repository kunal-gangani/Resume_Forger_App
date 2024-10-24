import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:resume_builder_app/globals/appbar_updated.dart';
import 'package:resume_builder_app/globals/global_variables.dart';
import 'package:resume_builder_app/views/PersonalDetails/utils/camera_section.dart';
import 'package:resume_builder_app/views/PersonalDetails/utils/personal_detail_info.dart';

class PersonalDetail extends StatefulWidget {
  const PersonalDetail({super.key});

  @override
  State<PersonalDetail> createState() => _PersonalDetailState();
}

class _PersonalDetailState extends State<PersonalDetail> {
  // tappedIndex variable to track which tab is selected
  int tappedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: GradientAppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
          ),
          title: const Text("Personal Details"),
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade600,
              Colors.blue.shade400,
              Colors.blue.shade200,
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            height: 600.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Personal Details Tab
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          tappedIndex = 0;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: 16,
                            top: 5,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                            ),
                            border: Border(
                              bottom: BorderSide(
                                color: tappedIndex == 0
                                    ? Colors.blueGrey
                                    : Colors.transparent,
                                width: 3,
                              ),
                            ),
                          ),
                          height: 50.h,
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 22.h,
                                color: Colors.black,
                              ),
                              Text(
                                "Personal Details",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Image Tab
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          tappedIndex = 1;
                          setState(() {});
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                            ),
                            border: Border(
                              bottom: BorderSide(
                                color: tappedIndex == 1
                                    ? Colors.blueGrey
                                    : Colors.transparent,
                                width: 3,
                              ),
                            ),
                          ),
                          height: 50.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.photo_camera),
                              SizedBox(width: 10.w),
                              Text(
                                "Image",
                                style: TextStyle(fontSize: 15.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: IndexedStack(
                    index: tappedIndex,
                    children: [
                      PersonalDetailInfo(), // Personal Details Section
                      CameraSection(), // Image Section
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
