import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bestdoctorappointmentapp/features/onboarding/doctor_image_and_text.dart';
import 'package:bestdoctorappointmentapp/features/onboarding/custom_start_button_and_text.dart';
import 'package:bestdoctorappointmentapp/features/onboarding/ui/widgets/custom_doc_and_name.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              const CustomDoctorAndName(),
              SizedBox(
                height: 30.h,
              ),
              const DoctorImageAndText(),
              const CustomStartButtonAndText()
            ],
          ),
        ),
      )),
    );
  }
}
