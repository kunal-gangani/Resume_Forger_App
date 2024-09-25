import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

final ImagePicker imagePicker = ImagePicker();
File? pickedImage;

Future<void> _pickImage(
  ImageSource source, {
  required BuildContext context,
}) async {
  final XFile? image = await imagePicker.pickImage(
    source: source,
  );
  if (image != null) {

    pickedImage = File(image.path);
  }
  Navigator.pop(context);
}

Widget cameraSection({
  required BuildContext context,
}) {
  return Container(
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
          backgroundImage: pickedImage != null ? FileImage(pickedImage!) : null,
        ),
        FloatingActionButton.small(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    "Pick Your Profile",
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: const Icon(
                          Icons.camera_alt,
                        ),
                        title: const Text(
                          "Camera",
                        ),
                        onTap: () {
                          _pickImage(
                            ImageSource.camera,
                            context: context,
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.photo),
                        title: const Text("Gallery"),
                        onTap: () {
                          _pickImage(
                            ImageSource.gallery,
                            context: context,
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: const Icon(
            Icons.add_a_photo,
          ),
        ),
      ],
    ),
  );
}
