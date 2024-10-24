import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:resume_builder_app/views/Education/utils/list_of_edu.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  // TextEditingController for the input fields
  final TextEditingController institutionController = TextEditingController();
  final TextEditingController degreeController = TextEditingController();
  final TextEditingController percentageController = TextEditingController();
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();

  // Function to add new education entry
  void addEducationEntry() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.blue.shade50,
          title: Text(
            "Add Education",
            style: TextStyle(
              fontSize: 20.sp,
            ),
          ),
          content: SizedBox(
            width: 350.w,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Institution Name Field
                  TextFormField(
                    controller: institutionController,
                    decoration: InputDecoration(
                      labelText: "Institution Name",
                      hintText: "Enter institution name",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 15.sp,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.black38,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.blue.shade200,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),

                  // Degree Name Field
                  TextFormField(
                    controller: degreeController,
                    decoration: InputDecoration(
                      labelText: "Degree Name",
                      hintText: "Enter degree",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 15.sp,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.black38,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.blue.shade200,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),

                  // Percentage Field
                  TextFormField(
                    controller: percentageController,
                    decoration: InputDecoration(
                      labelText: "Percentage Obtained",
                      hintText: "Enter percentage",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 15.sp,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.black38,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.blue.shade200,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),

                  // Start and End Date Fields
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: startDateController,
                          decoration: InputDecoration(
                            labelText: "Start Date",
                            hintText: "DD/MM/YYYY",
                            hintStyle: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.grey.shade800,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.blue.shade200,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: TextFormField(
                          controller: endDateController,
                          decoration: InputDecoration(
                            labelText: "End Date",
                            hintText: "DD/MM/YYYY",
                            hintStyle: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.grey.shade800,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.blue.shade200,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          actions: [
            // Cancel button
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Cancel",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
            // Submit button
            ElevatedButton(
              onPressed: () {
                // Add the new education details to the list
                eduList.add({
                  'institution': institutionController.text,
                  'degree': degreeController.text,
                  'percentage': percentageController.text,
                  'startDate': startDateController.text,
                  'endDate': endDateController.text,
                });

                // Clear the controllers
                institutionController.clear();
                degreeController.clear();
                percentageController.clear();
                startDateController.clear();
                endDateController.clear();

                setState(() {});
                Navigator.pop(context);
              },
              child: Text(
                "Submit",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: const Text(
          "Education",
        ),
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
        child: ListView.builder(
          itemCount: eduList.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blue.shade50,
              child: ListTile(
                title: Text(eduList[index]['degree']!),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Institution: ${eduList[index]['institution']}"),
                    Text("Percentage: ${eduList[index]['percentage']}%"),
                    Text("Start: ${eduList[index]['startDate']}"),
                    Text("End: ${eduList[index]['endDate']}"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addEducationEntry,
        child: const Icon(Icons.add),
      ),
    );
  }
}
