import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/constants/assets/assets_images.dart';

class MyStatusImage extends StatelessWidget {
  const MyStatusImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.asset(
            AssetsImages.profileImage,
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 25,
            height: 25,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            child: Center(
              child: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center(
                  child: IconButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.green,
                      size: 19,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
