import 'package:flutter/material.dart';
import 'package:bestdoctorappointmentapp/core/themes/styles.dart';
import 'package:bestdoctorappointmentapp/core/helper/spacing.dart';
import 'package:bestdoctorappointmentapp/core/themes/app_colors.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpicalCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations({
    Key? key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpicalCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At last 1 lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At last 1 uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow(
            'At last 1 spical character letter', hasSpicalCharacters),
        verticalSpace(2),
        buildValidationRow('At last 1 number', hasNumber),
        verticalSpace(2),
        buildValidationRow('At last 8 character long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManger.grey,
        ),
        horizintalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkRegular.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              decorationColor: Colors.green,
              decorationThickness: 2,
              color: hasValidated ? ColorsManger.grey : ColorsManger.darkBlue),
        )
      ],
    );
  }
}
