import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/themes/color_app.dart';
import 'package:mentor_academy_live_task/core/themes/styles.dart';
import 'package:mentor_academy_live_task/features/profile/presentation/views/widgets/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: Styles.textStyle24,
        ),
        iconTheme: const IconThemeData(
          color: ColorApp.primaryColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ProfileBody(),
      ),
    );
  }
}
