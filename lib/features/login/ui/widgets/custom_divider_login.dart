import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bestdoctorappointmentapp/core/themes/app_colors.dart';

class CustomDividerLogin extends StatelessWidget {
  const CustomDividerLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
            margin: EdgeInsets.only(left: 5.0.w, right: 5.0.w),
            child: const Divider(
              color: ColorsManger.lightGray,
            )),
      ),
      const Text(
        "Or sign in with",
        style: TextStyle(color: ColorsManger.lightGray),
      ),
      Expanded(
        child: Container(
            margin: EdgeInsets.only(left: 5.0.w, right: 5.0.w),
            child: const Divider(
              color: ColorsManger.lightGray,
            )),
      ),
    ]);
  }
}
