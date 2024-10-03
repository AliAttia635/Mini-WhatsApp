import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/constants/assets/assets_images.dart';
import 'package:mentor_academy_live_task/core/themes/color_app.dart';
import 'package:mentor_academy_live_task/core/themes/styles.dart';
import 'package:mentor_academy_live_task/features/home/presentation/view/home.dart';

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
        mainAxisAlignment:
            MainAxisAlignment.center, // Center content vertically
        children: [
          SizedBox(height: 245), // Spacing between image and text

          SizedBox(
            width: 140,
            height: 222, // Set your desired width here
            child: Image.asset(
              AssetsImages.whatsAppLogo,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 160), // Spacing between image and text
          Text("The best chat app of this century"),
          SizedBox(
            height: 135,
          ),

          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                gradient: LinearGradient(
                    colors: [ColorApp.secondryColor, ColorApp.primaryColor]),
              ),
              width: double.infinity,
              height: 45,
              child: Center(
                child: Text(
                  "continue",
                  style: Styles.textStyle10.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
      splashIconSize: double.infinity, // Allow content to fill screen
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white,
      nextScreen: HomePage(),
    );
  }
}
