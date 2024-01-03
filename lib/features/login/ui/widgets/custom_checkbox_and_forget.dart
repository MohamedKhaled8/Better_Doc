import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bestdoctorappointmentapp/core/themes/styles.dart';
import 'package:bestdoctorappointmentapp/core/helper/spacing.dart';

class CustomCheckBoxAndForgetPassword extends StatelessWidget {
  const CustomCheckBoxAndForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.withOpacity(0.3))),
            ),
            horizintalSpace(10),
            Text(
              "Remember me",
              style: TextStyles.font14GrayRegular,
            ),
          ],
        ),
        Text(
          "Forgot Password?",
          style: TextStyles.font14BlueRegular,
        )
      ],
    );
  }
}
