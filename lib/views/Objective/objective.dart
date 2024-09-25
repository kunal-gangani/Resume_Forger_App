import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:resume_builder_app/globals/global_variables.dart';

class Objective extends StatefulWidget {
  const Objective({super.key});

  @override
  State<Objective> createState() => _ObjectiveState();
}

class _ObjectiveState extends State<Objective> {
  TextEditingController objectiveCtrl = TextEditingController();
  TextEditingController currentCtrl = TextEditingController();
  TextEditingController expectedCtrl = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            // Flexify.back();
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: const Text(
          "Objectives",
        ),
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade600,
            Colors.blue.shade400,
            Colors.blue.shade200,
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              //Objectives textfield
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextField(
                      controller: objectiveCtrl,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide(
                            color: Colors.black38,
                            width: 2,
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
                            color: Colors.green.shade800,
                          ),
                        ),
                        labelText: "Objective",
                        hintText: "Enter your Objectives : ",
                        hintStyle: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      maxLines: 7,
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TextFormField(
                      controller: currentCtrl,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Colors.black38,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.blue.shade800,
                            width: 2,
                          ),
                        ),
                        labelText: "Current designation (If Any)",
                        labelStyle: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.grey.shade700,
                        ),
                        hintText: "Current Designation (If Any)",
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TextFormField(
                      controller: expectedCtrl,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Colors.black38,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.blue.shade800,
                            width: 2,
                          ),
                        ),
                        labelText: "Expected designation",
                        labelStyle: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.grey.shade700,
                        ),
                        hintText: "Current Designation (Optional)",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              //Submit Button
              ElevatedButton(
                onPressed: () {
                  userObjectives = objectiveCtrl.text.toString();
                  currentDesignation = currentCtrl.text.toString();
                  expectedDesignation = expectedCtrl.text.toString();

                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                  if (userObjectives.isNotEmpty &&
                      currentDesignation.isNotEmpty &&
                      expectedDesignation.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Data Saved",
                        ),
                      ),
                    );
                  }
                  Flexify.back();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade400,
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
