import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/constants/routing/routing.dart';
import 'package:mentor_academy_live_task/core/shared_widgets/custome_button.dart';
import 'package:mentor_academy_live_task/core/themes/color_app.dart';

class ButtonSignUp extends StatelessWidget {
  const ButtonSignUp({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomButton(
        label: 'Sign Up',
        backgroundColor: ColorApp.primaryColor,
        width: 490,
        height: 50,
        onPressed: () {
          if (formKey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Registred Successfully')),
            );
          }
        },
      ),
    );
  }
}
