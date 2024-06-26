import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class PersonalDetail extends StatefulWidget {
  const PersonalDetail({super.key});

  @override
  State<PersonalDetail> createState() => _PersonalDetailState();
}

class _PersonalDetailState extends State<PersonalDetail> {
  int tappedIndex = 0;
  String userName = "";
  String userAddress = "";
  int userPhone = 0;
  String userEmail = "";
  String userPass = "";
  bool isPassWord = true;

  TextEditingController nameCtrl = TextEditingController();
  TextEditingController addressCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();
  TextEditingController eMailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();

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
          gradient: const LinearGradient(
            colors: [
              Colors.green,
              Colors.lightGreen,
              Colors.lightGreenAccent,
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 600.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                color: Colors.green.shade100,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                ),
                                border: Border(
                                  bottom: BorderSide(
                                    color: tappedIndex == 0
                                        ? Colors.grey
                                        : Colors.transparent,
                                    width: 2,
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
                                color: Colors.green.shade100,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                ),
                                border: Border(
                                  bottom: BorderSide(
                                    color: tappedIndex == 1
                                        ? Colors.grey
                                        : Colors.transparent,
                                    width: 2,
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
                    IndexedStack(
                      index: tappedIndex,
                      children: [
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                //name section
                                TextFormField(
                                  controller: nameCtrl,
                                  keyboardType: TextInputType.name,
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
                                        color: Colors.green.shade800,
                                      ),
                                    ),
                                    hintText: "Enter your Username : ",
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
                                        color: Colors.green.shade800,
                                      ),
                                    ),
                                    hintText: "Enter your Address : ",
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
                                        color: Colors.green.shade800,
                                      ),
                                    ),
                                    hintText: "Enter your Phone Number : ",
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
                                        color: Colors.green.shade800,
                                      ),
                                    ),
                                    hintText: "Enter your E-mail : ",
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
                                        color: Colors.green.shade800,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    //submit button
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green.shade400,
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
                                        backgroundColor: Colors.green.shade400,
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
                        ),
                        //Image Section
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
