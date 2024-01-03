import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bestdoctorappointmentapp/core/themes/styles.dart';
import 'package:bestdoctorappointmentapp/core/constant/image_assets.dart';
import 'package:bestdoctorappointmentapp/features/onboarding/ui/widgets/custom_image_onbarding_doctor.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 30.w, left: 5.w),
          child: SvgPicture.asset(AppImageAsset.docdocLogoLowOpacity),
        ),
        const CustomImageOnBoardingDoctor(),
        Positioned(
            bottom: 30.h,
            left: 0,
            right: 0,
            child: Text(
              'Best Doctor\nAppointment App',
              textAlign: TextAlign.center,
              style: TextStyles.font32BlueBold.copyWith(height: 1.4.h),
            )),
      ],
    );
  }
}
