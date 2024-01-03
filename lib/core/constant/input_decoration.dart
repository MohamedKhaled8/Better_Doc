import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bestdoctorappointmentapp/core/themes/app_colors.dart';

InputDecoration customInputDecoration({
  required String hintText,
}) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
        fontSize: 18.sp, color: ColorsManger.lightGray.withOpacity(0.4)),
    // filled: true,
    // fillColor: ColorsManger.gray.withOpacity(0.1),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: ColorsManger.lightGray.withOpacity(0.2)),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorsManger.lightGray.withOpacity(0.2)),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
}
