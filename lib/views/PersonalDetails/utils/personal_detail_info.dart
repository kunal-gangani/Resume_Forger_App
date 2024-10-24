import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume_builder_app/globals/global_variables.dart';
import 'package:resume_builder_app/views/PersonalDetails/utils/controllers.dart';

class PersonalDetailInfo extends StatefulWidget {
  const PersonalDetailInfo({super.key});

  @override
  State<PersonalDetailInfo> createState() => _PersonalDetailInfoState();
}

class _PersonalDetailInfoState extends State<PersonalDetailInfo> {
  // Form key to validate the form
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // name section
          TextFormField(
            initialValue: registeredName,
            enabled: false,
            keyboardType: TextInputType.name,
            validator: (value) => (value!.isEmpty) ? "Name is required" : null,
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
              disabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.green.shade600,
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
                  color: Colors.blue.shade800,
                ),
              ),
              hintText: "John Doe ",
              hintStyle: TextStyle(
                fontSize: 15.sp,
                color: Colors.grey,
              ),
              labelText: "Username",
              labelStyle: TextStyle(
                fontSize: 15.sp,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          // address Section
          TextFormField(
            controller: addressCtrl,
            maxLines: 3,
            validator: (value) {
              return (value!.isEmpty) ? "Address is required" : null;
            },
            keyboardType: TextInputType.streetAddress,
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
                  color: Colors.blue.shade800,
                ),
              ),
              hintText: "ABC Street ",
              hintStyle: TextStyle(
                fontSize: 15.sp,
                color: Colors.grey,
              ),
              labelText: "Address",
              labelStyle: TextStyle(
                fontSize: 15.sp,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          // Phone number Section
          TextFormField(
            initialValue: registeredPhone,
            keyboardType: TextInputType.phone,
            enabled: false,
            maxLength: 10,
            validator: (value) {
              return (value!.isEmpty) ? "Phone Number is required" : null;
            },
            decoration: InputDecoration(
              disabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.green.shade600,
                ),
              ),
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
                  color: Colors.blue.shade800,
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
                color: Colors.grey.shade700,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          // email Section
          TextFormField(
            initialValue: registeredEmail,
            enabled: false,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              return (value!.isEmpty) ? "Email is required" : null;
            },
            decoration: InputDecoration(
              disabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.green.shade600,
                ),
              ),
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
                  color: Colors.blue.shade800,
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
                color: Colors.grey.shade700,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          // submit button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // submit button
              ElevatedButton(
                onPressed: () {
                  userAddress = addressCtrl.text.toString();
                  userPass = passCtrl.text.toString();
                  if (formkey.currentState != null &&
                      formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    if (userAddress.isNotEmpty && userPass.isNotEmpty) {
                      // You can add your submit logic here
                    }
                    setState(() {});
                  }
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
              // clear button
              ElevatedButton(
                onPressed: () {
                  nameCtrl.clear();
                  addressCtrl.clear();
                  eMailCtrl.clear();
                  phoneCtrl.clear();
                  passCtrl.clear();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade400,
                ),
                child: const Text(
                  "Clear",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
