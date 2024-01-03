import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bestdoctorappointmentapp/core/themes/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: 'By logging, you agree to our',
              style: TextStyles.font14GrayRegular),
          TextSpan(
              text: ' Terms & Conditions ',
              style: TextStyles.font13DarkRegular),
          TextSpan(
            text: ' and ',
            style: TextStyles.font14GrayRegular.copyWith(height: 1.5.h),
          ),
          TextSpan(
              text: 'PrivacyPolicy.', style: TextStyles.font13DarkBlueMedium),
        ]));
  }
}
