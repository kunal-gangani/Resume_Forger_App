import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume_builder_app/globals/global_variables.dart';
import 'package:resume_builder_app/globals/routes.dart';
import 'package:resume_builder_app/views/HomePage/home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController rUserCtrl = TextEditingController();
  TextEditingController rEmailCtrl = TextEditingController();
  TextEditingController rPhoneCtrl = TextEditingController();

  Color themeColor50 = Colors.blue.shade50;
  Color themeColor800 = Colors.blue.shade800;
  Color themeColor500 = Colors.blue.shade500;
  Color grey700 = Colors.grey.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: GradientAppBar(
        title: const Text(
          "Welcome",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade600,
            Colors.blue.shade400,
            Colors.blue.shade200,
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/views/RegisterPage/assets/background.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Let's Get You Started",
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 390.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: themeColor50,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 3,
                  color: Colors.black,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: rUserCtrl,
                      keyboardType: TextInputType.name,
                      validator: (value) =>
                          (value!.isEmpty) ? "Name is required" : null,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.black38,
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.black38,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide(
                            width: 2,
                            color: themeColor800,
                          ),
                        ),
                        hintText: "John Doe",
                        hintStyle: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.grey,
                        ),
                        labelText: "Username",
                        labelStyle: TextStyle(
                          fontSize: 15.sp,
                          color: grey700,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: rEmailCtrl,
                      validator: (value) {
                        return (value!.isEmpty) ? "Email is required" : null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.black38,
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.black38,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide(
                            width: 2,
                            color: themeColor800,
                          ),
                        ),
                        hintText: "xyz@gmail.com",
                        hintStyle: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.grey,
                        ),
                        labelText: "E-Mail",
                        labelStyle: TextStyle(
                          fontSize: 15.sp,
                          color: grey700,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: rPhoneCtrl,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      validator: (value) {
                        return (value!.isEmpty)
                            ? "Phone Number is required"
                            : null;
                      },
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.black38,
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.black38,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide(
                            width: 2,
                            color: themeColor800,
                          ),
                        ),
                        hintText: "9876543210",
                        hintStyle: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.grey,
                        ),
                        labelText: "Phone Number",
                        labelStyle: TextStyle(
                          fontSize: 15.sp,
                          color: grey700,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: themeColor500,
                      ),
                      onPressed: () {
                        //Navigator.pushReplacementNamed(context, Routes.myHome);
                        Flexify.goRemoveAll(
                          const HomePage(),
                          animation: FlexifyRouteAnimations.slideAndFade,
                          duration: const Duration(
                            milliseconds: 500,
                          ),
                        );
                      },
                      child: const Text(
                        "Move Ahead",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
