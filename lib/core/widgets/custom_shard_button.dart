import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bestdoctorappointmentapp/core/themes/styles.dart';
import 'package:bestdoctorappointmentapp/core/themes/app_colors.dart';

class CustomShardButton extends StatelessWidget {
  final String text;
  final double heigth;
  final double width;
  void Function()? onPressed;
   CustomShardButton({
    Key? key,
    required this.text,
    required this.heigth,
    required this.width,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heigth.h,
      width: width.w,
      child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(ColorsManger.mainBlue),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              maximumSize:
                  MaterialStateProperty.all(Size(double.infinity, 52.h)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ))),
          child: Text(
            text,
            style: TextStyles.font23Regular,
          )),
    );
  }
}
