import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bestdoctorappointmentapp/core/themes/app_colors.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have an account yet?',
            style: TextStyle(color: ColorsManger.black, fontSize: 16.sp)),
        TextButton(
            onPressed: () {},
            child: Text('Sign Up ', style: TextStyle(fontSize: 16.sp)))
      ],
    );
  }
}
