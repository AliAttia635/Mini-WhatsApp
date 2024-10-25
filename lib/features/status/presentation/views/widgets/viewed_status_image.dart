import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/constants/assets/assets_images.dart';

class ViewedStatusImage extends StatelessWidget {
  const ViewedStatusImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: Image.asset(
            AssetsImages.profileImage,
            width: 64,
            height: 64,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
