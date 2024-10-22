import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/constants/routing/routing.dart';
import 'package:mentor_academy_live_task/core/themes/color_app.dart';
import 'package:mentor_academy_live_task/core/themes/styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account?',
          style: Styles.textStyle16,
        ),
        TextButton(
          onPressed: () =>
              Navigator.pushReplacementNamed(context, Routing.login),
          child: Text(
            'Login here',
            style: Styles.textStyle16.copyWith(color: ColorApp.primaryColor),
          ),
        )
      ],
    );
  }
}
