import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class Objective extends StatefulWidget {
  const Objective({super.key});

  @override
  State<Objective> createState() => _ObjectiveState();
}

class _ObjectiveState extends State<Objective> {
  String userObjectives = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text("Objectives"),
        gradient: const LinearGradient(
          colors: [
            Colors.green,
            Colors.lightGreen,
            Colors.lightGreenAccent,
          ],
        ),
      ),
      body: Column(
        children: [
          //Objectives textfield
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              onChanged: (val){
                userObjectives = val;
              },
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
          ),
          SizedBox(
            height: 20.h,
          ),
          //Submit Button
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
        ],
      ),
    );
  }
}
