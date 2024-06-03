import 'package:authentication_app/module/login/login_page.dart';
import 'package:authentication_app/module/onboarding/onboarding_page.dart';
import 'package:authentication_app/module/signup/signup_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'onboarding',
      routes: {
        'onboarding': (context) => const OnboardingPage(),
        'login': (context) => const LoginPage(),
        'singUp': (context) => const SingUpPage(),
      },
    );
  }
}
