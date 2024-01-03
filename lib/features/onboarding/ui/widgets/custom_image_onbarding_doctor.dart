import 'package:flutter/material.dart';
import 'package:bestdoctorappointmentapp/core/constant/image_assets.dart';

class CustomImageOnBoardingDoctor extends StatelessWidget {
  const CustomImageOnBoardingDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.white, Colors.white.withOpacity(0.0)],
        begin: Alignment.bottomCenter,
        stops: const [0.14, 0.4],
        end: Alignment.topCenter,
      )),
      child: Image.asset(AppImageAsset.onBoardingDoctor),
    );
  }
}