import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/constants/assets/assets_images.dart';
import 'package:mentor_academy_live_task/core/themes/color_app.dart';

class ProfileImageEdit extends StatelessWidget {
  const ProfileImageEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(75.0),
            child: Image.asset(
              AssetsImages.profileImage,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorApp.primaryColor,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
