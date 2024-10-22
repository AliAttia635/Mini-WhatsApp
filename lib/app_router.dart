import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/constants/routing/routing.dart';
import 'package:mentor_academy_live_task/features/Auth/presentation/views/login_view.dart';
import 'package:mentor_academy_live_task/features/auth/presentation/views/signup_view.dart';
import 'package:mentor_academy_live_task/features/splash_screen/presentation/views/splash_screen.dart';

class AppRouters {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routing.init:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routing.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case Routing.login:
        return MaterialPageRoute(builder: (_) => const LoginView());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Opps there was an error'),
            ),
          ),
        );
    }
  }
}
