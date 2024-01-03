import 'package:flutter/material.dart';
import 'package:bestdoctorappointmentapp/core/constant/image_assets.dart';
import 'package:bestdoctorappointmentapp/features/login/ui/widgets/custom_image_socail_mdeia.dart';

class CustomSocialMediaIcons extends StatelessWidget {
  const CustomSocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomImageSocialMedia(
          image: AppImageAsset.googleImage,
        ),
        CustomImageSocialMedia(
          image: AppImageAsset.faceBookImage,
        ),
        CustomImageSocialMedia(
          image: AppImageAsset.appleImage,
        ),
      ],
    );
  }
}
