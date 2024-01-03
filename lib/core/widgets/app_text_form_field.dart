import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bestdoctorappointmentapp/core/themes/styles.dart';
import 'package:bestdoctorappointmentapp/core/themes/app_colors.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enableBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hitStyle;
  final String hitText;
  final bool? isObSecureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController controller;
  final Function(String?) validator;
  const AppTextFormField(
      {Key? key,
      this.contentPadding,
      this.focusedBorder,
      this.enableBorder,
      this.inputTextStyle,
      this.hitStyle,
      required this.hitText,
      this.isObSecureText,
      this.suffixIcon,
      this.backgroundColor,
      required this.controller,
      required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide:
                      BorderSide(color: ColorsManger.mainBlue, width: 1.3.w)),
          enabledBorder: enableBorder ??
              OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: BorderSide(
                      color: ColorsManger.lighterGray, width: 1.3.w)),
          errorBorder: enableBorder ??
              OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: BorderSide(color: Colors.red, width: 1.3.w)),
          focusedErrorBorder: enableBorder ??
              OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: BorderSide(color: Colors.red, width: 1.3.w)),
          hintStyle: hitStyle ?? TextStyles.font14LigthGrayRegular,
          hintText: hitText,
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: backgroundColor ?? ColorsManger.moreLigthGray),
      obscureText: isObSecureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
