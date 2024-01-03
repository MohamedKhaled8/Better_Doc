import 'package:flutter/material.dart';
import 'package:bestdoctorappointmentapp/core/routes/routes.dart';
import 'package:bestdoctorappointmentapp/core/helper/extensions.dart';
import 'package:bestdoctorappointmentapp/core/constant/image_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        context.pushNamed(Routes.onBardingScreen);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        AppImageAsset.splashScreen,
        fit: BoxFit.cover,
      ),
    );
  }
}
