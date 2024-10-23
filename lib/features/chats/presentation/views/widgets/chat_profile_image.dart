import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/constants/assets/assets_images.dart';

class ChatProfileImage extends StatelessWidget {
  const ChatProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(35.0),
      child: Image.asset(
        AssetsImages.profileImage,
        width: 70,
        height: 70,
        fit: BoxFit.cover,
      ),
    );
  }
}
