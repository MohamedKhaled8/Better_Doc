import 'package:flutter/material.dart';
import '../../core/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bestdoctorappointmentapp/core/themes/styles.dart';
import 'package:bestdoctorappointmentapp/core/helper/extensions.dart';
import 'package:bestdoctorappointmentapp/core/widgets/custom_shard_button.dart';

class CustomStartButtonAndText extends StatelessWidget {
  const CustomStartButtonAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            style: TextStyles.font14GrayRegular,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomShardButton(
            heigth: 55,
            text: 'Get Started',
            width: 311,
            onPressed: () {
              context.pushNamed(Routes.loginScreen);
            },
          ),
        ],
      ),
    );
  }
}
