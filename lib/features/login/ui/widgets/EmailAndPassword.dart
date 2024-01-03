import 'package:flutter/material.dart';
import '../../../../core/helper/spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import 'package:bestdoctorappointmentapp/core/helper/app_regex.dart';
import 'package:bestdoctorappointmentapp/features/login/logic/cubit/login_cubit.dart';
import 'package:bestdoctorappointmentapp/features/login/ui/widgets/password_validations.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpicalCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  bool isObsecureText = true;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passCont;
    setupPasswordControllerListener();
  }

  @override
  void dispose() {
    passwordController.dispose();

    super.dispose();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpicalCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            AppTextFormField(
              controller: context.read<LoginCubit>().emailCont,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return "Please enter a valid email";
                }
              },
              hitText: 'Email',
            ),
            verticalSpace(18),
            AppTextFormField(
              controller: context.read<LoginCubit>().passCont,
              hitText: 'Password',
              isObSecureText: isObsecureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObsecureText = !isObsecureText;
                  });
                },
                child: Icon(
                  isObsecureText ? Icons.visibility_off : Icons.visibility,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a valid password";
                }
              },
            ),
            verticalSpace(18),
            PasswordValidations(
              hasLowerCase: hasLowerCase,
              hasMinLength: hasMinLength,
              hasNumber: hasNumber,
              hasSpicalCharacters: hasSpicalCharacters,
              hasUpperCase: hasUpperCase,
            ),
          ],
        ));
  }
}
