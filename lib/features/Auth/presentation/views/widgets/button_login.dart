import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/constants/routing/routing.dart';
import 'package:mentor_academy_live_task/core/shared_widgets/custome_button.dart';
import 'package:mentor_academy_live_task/core/themes/color_app.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomButton(
        label: 'Sign In',
        backgroundColor: ColorApp.primaryColor,
        width: 490,
        height: 50,
        onPressed: () {
          if (formKey.currentState!.validate()) {
            Navigator.pushReplacementNamed(context, Routing.signUp);
          }
        },
      ),
    );
  }
}
