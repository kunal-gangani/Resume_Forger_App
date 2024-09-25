import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume_builder_app/globals/global_variables.dart';
import 'package:resume_builder_app/globals/routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

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
            Form(
              key: _formKey,
              child: Container(
                height: 425.h,
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
                        onSaved: (val) {
                          registeredName = val ?? "";
                        },
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: rEmailCtrl,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email is required";
                          }
                          String pattern = r'^[^@]+@[^@]+\.[^@]+';
                          RegExp regex = RegExp(pattern);
                          if (!regex.hasMatch(value)) {
                            return "Enter a valid email address";
                          }
                          return null;
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
                        onSaved: (val) {
                          registeredEmail = val ?? "0";
                        },
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
                          if (value!.isEmpty) {
                            return "Phone Number is required";
                          }
                          if (value.length != 10) {
                            return "Phone Number must be 10 digits";
                          }
                          return null;
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
                        onSaved: (val) {
                          registeredPhone = val ?? "0";
                        },
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: themeColor500,
                        ),
                        onPressed: () {
                          registeredName = rUserCtrl.text.toString();
                          registeredEmail = rEmailCtrl.text.toString();
                          registeredPhone = rPhoneCtrl.text.toString();
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            if (registeredPhone.isNotEmpty &&
                                registeredEmail.isNotEmpty &&
                                registeredName.isNotEmpty) {
                              //
                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                Routes.homePage,
                                (route) => false,
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:
                                      Text("Please enter a valid phone number"),
                                ),
                              );
                            }
                          }
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
            ),
          ],
        ),
      ),
    );
  }
}
