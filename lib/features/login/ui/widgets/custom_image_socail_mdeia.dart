import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImageSocialMedia extends StatelessWidget {
  final String image;
  const CustomImageSocialMedia({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: SvgPicture.asset(
          image,
        ));
  }
}
