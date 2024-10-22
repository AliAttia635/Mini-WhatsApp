import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/features/Auth/presentation/views/widgets/custom_logo.dart';
import 'package:mentor_academy_live_task/features/auth/presentation/views/widgets/already_have_account.dart';
import 'package:mentor_academy_live_task/features/auth/presentation/views/widgets/button_signup.dart';
import 'package:mentor_academy_live_task/features/auth/presentation/views/widgets/email_text_field.dart';
import 'package:mentor_academy_live_task/features/auth/presentation/views/widgets/password_text_field.dart';
import 'package:mentor_academy_live_task/features/auth/presentation/views/widgets/phone_text_field.dart';
import 'package:mentor_academy_live_task/features/auth/presentation/views/widgets/signin_text.dart';
import 'package:mentor_academy_live_task/features/auth/presentation/views/widgets/user_name_text_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomLogo(),
                const SizedBox(height: 10),
                const TextTitle(title: 'Register to New Account'),
                const SizedBox(height: 16),
                UserNameTextField(nameController: nameController),
                const SizedBox(height: 16),
                EmailTextField(
                  emailController: emailController,
                ),
                const SizedBox(height: 16),
                PhoneTextField(
                  phoneController: phoneController,
                ),
                const SizedBox(height: 10),
                PasswordTextField(
                  passwordController: passwordController,
                ),
                const SizedBox(height: 20),
                ButtonSignUp(
                  formKey: formKey,
                ),
                const AlreadyHaveAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
