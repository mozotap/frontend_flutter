import 'package:flutter/material.dart';
import 'package:mozotap/presentation/login/login_screen.dart';
import 'package:mozotap/presentation/signup/signup_screen.dart';

class AppRoutes {
  static const String onboarding = '/onboarding';
  static const String welcome = '/welcome';
  static const String signIn = '';
  static const String signUp = '/signup';

  static Map<String, WidgetBuilder> get routes {
    return {
      signIn: (BuildContext context) => const LoginScreen(),
      signUp: (BuildContext context) => const SignUpScreen(),
    };
  }
}
