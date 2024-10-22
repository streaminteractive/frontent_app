import 'package:flutter/material.dart';
import 'package:streamplay/src/ui/pages/signin/signin_page.dart';
import 'package:streamplay/src/ui/pages/signup/signup_page.dart';
import 'package:streamplay/src/ui/pages/verify_email/verify_email_page.dart';

class AppRoutes {
  static const String onboarding = '/onboarding';
  static const String welcome = '/welcome';
  static const String signIn = '/signin';
  static const String signUp = '/signup';
  static const String verifyEmail = '/verifyEmail';

  static Map<String, WidgetBuilder> get routes {
    return {
      signIn: (BuildContext context) => const SignInPage(),
      signUp: (BuildContext context) => const SignUpPage(),
      verifyEmail: (BuildContext context) => const VerifyEmailPage(),
    };
  }
}
