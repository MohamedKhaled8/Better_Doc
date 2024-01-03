import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bestdoctorappointmentapp/core/themes/styles.dart';
import 'package:bestdoctorappointmentapp/core/helper/spacing.dart';
import 'package:bestdoctorappointmentapp/core/widgets/custom_shard_button.dart';
import 'package:bestdoctorappointmentapp/features/login/logic/cubit/login_cubit.dart';
import 'package:bestdoctorappointmentapp/features/login/ui/widgets/EmailAndPassword.dart';
import 'package:bestdoctorappointmentapp/features/login/ui/widgets/login_block_listner.dart';
import 'package:bestdoctorappointmentapp/features/login/data/models/login_request_body.dart';
import 'package:bestdoctorappointmentapp/features/login/ui/widgets/custom_divider_login.dart';
import 'package:bestdoctorappointmentapp/features/login/ui/widgets/already_have_any_account.dart';
import 'package:bestdoctorappointmentapp/features/login/ui/widgets/terms_and_condition_text.dart';
import 'package:bestdoctorappointmentapp/features/login/ui/widgets/custom_social_media_icons.dart';
import 'package:bestdoctorappointmentapp/features/login/ui/widgets/custom_checkbox_and_forget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 80.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(10),
                Text(
                    "We're excited to have you back, can't wait to\nsee what you've been up to since you last\nlogged in.",
                    style: TextStyles.font14GrayRegular),
                verticalSpace(35),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(20),
                    const CustomCheckBoxAndForgetPassword(),
                  ],
                ),
                verticalSpace(30),
                CustomShardButton(
                  text: 'Login',
                  heigth: 55,
                  width: 311,
                  onPressed: () {
                    calidateThenDoLogin(context);
                  },
                ),
                verticalSpace(30),
                const CustomDividerLogin(),
                verticalSpace(30),
                const CustomSocialMediaIcons(),
                verticalSpace(15),
                const TermsAndConditionsText(),
                verticalSpace(5),
                const LoginBlocListner(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void calidateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState(LoginRequstBody(
          email: context.read<LoginCubit>().emailCont.text,
          password: context.read<LoginCubit>().emailCont.text));
    }
  }
}
