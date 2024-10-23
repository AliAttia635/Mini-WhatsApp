import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/constants/routing/routing.dart';
import 'package:mentor_academy_live_task/features/Auth/presentation/views/login_view.dart';
import 'package:mentor_academy_live_task/features/auth/presentation/views/signup_view.dart';
import 'package:mentor_academy_live_task/features/home/presentation/views/home_view.dart';
import 'package:mentor_academy_live_task/features/splash_screen/presentation/views/splash_screen.dart';

class AppRouters {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routing.init:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routing.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case Routing.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routing.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());

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
