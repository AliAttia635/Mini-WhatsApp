import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/constants/routing/routing.dart';
import 'package:mentor_academy_live_task/core/themes/color_app.dart';
import 'package:mentor_academy_live_task/core/themes/styles.dart';

class RegisterText extends StatelessWidget {
  const RegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don\'t have an account?',
          style: Styles.textStyle16,
        ),
        TextButton(
          onPressed: () =>
              Navigator.pushReplacementNamed(context, Routing.signUpRoute),
          child: Text(
            'Register here',
            style: Styles.textStyle16.copyWith(color: ColorApp.primaryColor),
          ),
        )
      ],
    );
  }
}
