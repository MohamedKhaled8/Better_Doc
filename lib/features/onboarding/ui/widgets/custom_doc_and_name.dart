import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bestdoctorappointmentapp/core/themes/styles.dart';
import 'package:bestdoctorappointmentapp/core/constant/image_assets.dart';

class CustomDoctorAndName extends StatelessWidget {
  const CustomDoctorAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImageAsset.logoDoctor),
        SizedBox(
          width: 10.w,
        ),
        Text(
          'DocDoc',
          style: TextStyles.font24BlackBold,
        )
      ],
    );
  }
}
