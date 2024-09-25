import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:resume_builder_app/globals/global_variables.dart';

class Reference extends StatefulWidget {
  const Reference({super.key});

  @override
  State<Reference> createState() => _ReferenceState();
}

class _ReferenceState extends State<Reference> {
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController relationCtrl = TextEditingController();
  final TextEditingController contactCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
        title: const Text(
          "Reference",
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
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: referenceList.length,
                itemBuilder: (context, index) {
                  final reference = referenceList[index];
                  return Card(
                    color: Colors.blue.shade50,
                    margin: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: ListTile(
                      title: Text(reference['name']),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Relationship: ${reference['relationship']}",
                          ),
                          Text(
                            "Contact: ${reference['contact']}",
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.remove_circle,
                        ),
                        onPressed: () {
                          setState(() {
                            referenceList.removeAt(index);
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.blue[200],
                title: const Text(
                  "Add Reference",
                ),
                content: Form(
                  key: _formKey,
                  child: SizedBox(
                    width: 300.w,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: nameCtrl,
                          decoration: const InputDecoration(
                            labelText: "Name",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the name';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextFormField(
                          controller: relationCtrl,
                          decoration: const InputDecoration(
                            labelText: "Relationship",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the relationship';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10.h),
                        TextFormField(
                          controller: contactCtrl,
                          decoration: const InputDecoration(
                            labelText: "Contact Info",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter contact info';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Cancel",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          referenceList.add({
                            'name': nameCtrl.text,
                            'relationship': relationCtrl.text,
                            'contact': contactCtrl.text,
                          });
                          nameCtrl.clear();
                          relationCtrl.clear();
                          contactCtrl.clear();
                        });
                        Navigator.pop(context);
                      }
                    },
                    child: const Text(
                      "Add",
                    ),
                  ),
                ],
              );
            },
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
