import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

TextEditingController nameCtrl = TextEditingController();
TextEditingController addressCtrl = TextEditingController();
TextEditingController phoneCtrl = TextEditingController();
TextEditingController eMailCtrl = TextEditingController();
TextEditingController passCtrl = TextEditingController();
GlobalKey<FormState> formkey = GlobalKey<FormState>();

final ImagePicker imagePicker = ImagePicker();
File? pickedImage;
