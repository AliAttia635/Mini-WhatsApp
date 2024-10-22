import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/constants/assets/assets_images.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 220,
      alignment: Alignment.topCenter,
      child: Image.asset(AssetsImages.whatsAppLogo),
    );
  }
}
