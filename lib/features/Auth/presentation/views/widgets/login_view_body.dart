import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/features/Auth/presentation/views/widgets/custom_logo.dart';
import 'package:mentor_academy_live_task/features/auth/presentation/views/widgets/button_login.dart';
import 'package:mentor_academy_live_task/features/auth/presentation/views/widgets/email_text_field.dart';
import 'package:mentor_academy_live_task/features/auth/presentation/views/widgets/password_text_field.dart';
import 'package:mentor_academy_live_task/features/auth/presentation/views/widgets/register_text.dart';
import 'package:mentor_academy_live_task/features/auth/presentation/views/widgets/signin_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomLogo(),
                  const TextTitle(title: 'Login to Your Account'),
                  const SizedBox(height: 15),
                  EmailTextField(
                    emailController: emailController,
                  ),
                  const SizedBox(height: 10),
                  PasswordTextField(
                    passwordController: passwordController,
                  ),
                  const SizedBox(height: 20),
                  ButtonLogin(
                    formKey: formKey,
                  ),
                  const SizedBox(height: 15),
                  const RegisterText()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
