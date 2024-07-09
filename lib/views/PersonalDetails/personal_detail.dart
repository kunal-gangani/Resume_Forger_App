import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_app/globals/global_variables.dart';
import 'dart:io';

class PersonalDetail extends StatefulWidget {
  const PersonalDetail({super.key});

  @override
  State<PersonalDetail> createState() => _PersonalDetailState();
}

class _PersonalDetailState extends State<PersonalDetail> {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController addressCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();
  TextEditingController eMailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  ImagePicker picker = ImagePicker();
  File? image;

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
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
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
                    //personal details text container
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          tappedIndex = 0;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 16, top: 5),
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
                    //image text container
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
                          child: Text(
                            "Image",
                            style: TextStyle(
                              fontSize: 15.sp,
                            ),
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
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            //name section
                            TextFormField(
                              initialValue: registeredName,
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
                            //address Section
                            TextFormField(
                              controller: addressCtrl,
                              maxLines: 3,
                              validator: (value) {
                                return (value!.isEmpty)
                                    ? "Address is required"
                                    : null;
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
                            //Phone number Section
                            TextFormField(
                              controller: phoneCtrl,
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
                            //email Section
                            TextFormField(
                              controller: eMailCtrl,
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                return (value!.isEmpty)
                                    ? "Email is required"
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
                            //Password Section
                            TextFormField(
                              controller: passCtrl,
                              keyboardType: TextInputType.text,
                              obscureText: isPassWord,
                              validator: (value) {
                                return (value!.isEmpty)
                                    ? "Password is required"
                                    : null;
                              },
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    isPassWord = !isPassWord;
                                    setState(() {});
                                  },
                                  icon: Icon(
                                    isPassWord
                                        ? Icons.visibility_off
                                        : Icons.visibility,
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
                                hintText: "Enter your Password : ",
                                hintStyle: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.grey,
                                ),
                                labelText: "Password",
                                labelStyle: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            //submit button
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                //submit button
                                ElevatedButton(
                                  onPressed: () {
                                    if (formkey.currentState!.validate()) {
                                      formkey.currentState!.save();
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
                                //clear button
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
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      //Image Section
                      Container(
                        width: double.infinity,
                        height: 250.h,
                        padding: const EdgeInsets.all(40),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 75.w,
                              // backgroundImage: (""),
                            ),
                            FloatingActionButton.small(
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
