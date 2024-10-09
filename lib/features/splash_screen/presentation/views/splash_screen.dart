import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/themes/styles.dart';
import 'package:mentor_academy_live_task/features/home/presentation/view/home.dart';
import 'package:mentor_academy_live_task/core/constants/assets/assets_images.dart';
import 'package:mentor_academy_live_task/core/themes/color_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetsImages.whatsAppLogo,
            width: 140,
            height: 220,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 80),
          Text("The best chat app of this century"),
        ],
      ),
      splashIconSize: double.infinity, // Allow content to fill screen
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white,
      nextScreen: HomePage(),
    );
  }
}
