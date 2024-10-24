import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:intl/intl.dart'; // For date formatting

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  // TextEditingControllers for the input fields
  TextEditingController companyCtrl = TextEditingController();
  TextEditingController roleCtrl = TextEditingController();
  TextEditingController startCtrl = TextEditingController();
  TextEditingController endCtrl = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  // Experience list to store the data
  List<Map<String, String>> experienceList = [];

  // Function to select a date using DatePicker
  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      setState(() {
        controller.text = DateFormat('dd/MM/yyyy').format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: const Text("Experience"),
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
        child: experienceList.isNotEmpty
            ? ListView.builder(
                itemCount: experienceList.length,
                itemBuilder: (context, index) {
                  final experience = experienceList[index];
                  return Card(
                    color: Colors.blue.shade50,
                    child: ListTile(
                      title: Text(experience['company']!),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Role: ${experience['role']}"),
                          Text("Start Date: ${experience['startDate']}"),
                          Text("End Date: ${experience['endDate']}"),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              // Update button logic (if needed)
                            },
                            icon: const Icon(
                              Icons.update,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Remove button logic
                              setState(() {
                                experienceList.removeAt(index);
                              });
                            },
                            icon: const Icon(
                              Icons.remove_circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            : const Center(
                child: Text("No experience added yet!"),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade200,
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: Colors.blue.shade50,
                title: const Text('Add Experience'),
                content: SizedBox(
                  width: 300.w,
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            controller: companyCtrl,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: "Company Name",
                              hintText: "ABC Ltd.",
                              hintStyle: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the company name';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 15.h),
                          TextFormField(
                            controller: roleCtrl,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: "Designation",
                              hintText: "Manager, HR",
                              hintStyle: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the designation';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 15.h),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: startCtrl,
                                  keyboardType: TextInputType.datetime,
                                  decoration: InputDecoration(
                                    labelText: "Start Date",
                                    hintText: "DD/MM/YYYY",
                                    hintStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                  onTap: () {
                                    _selectDate(context, startCtrl);
                                  },
                                  readOnly: true,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter the start date';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(width: 5.w),
                              Expanded(
                                child: TextFormField(
                                  controller: endCtrl,
                                  keyboardType: TextInputType.datetime,
                                  decoration: InputDecoration(
                                    labelText: "End Date",
                                    hintText: "DD/MM/YYYY",
                                    hintStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                  onTap: () {
                                    _selectDate(context, endCtrl);
                                  },
                                  readOnly: true,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter the end date';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.h),
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  // Add experience details to the list
                                  experienceList.add({
                                    'company': companyCtrl.text,
                                    'role': roleCtrl.text,
                                    'startDate': startCtrl.text,
                                    'endDate': endCtrl.text,
                                  });

                                  // Clear the text fields
                                  companyCtrl.clear();
                                  roleCtrl.clear();
                                  startCtrl.clear();
                                  endCtrl.clear();
                                });
                                Navigator.pop(context);
                              }
                            },
                            child: const Text("Submit"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
