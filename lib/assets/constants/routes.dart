import 'package:flutter/material.dart';

import '../../core/pages/error.dart';
import '../../core/pages/splash_screen.dart';
import '../../features/onboarding/onboarding.dart';

class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

      case "/onBoarding":
        return MaterialPageRoute(builder: (context) => const OnBoarding());
      // case '/home':
      //   return MaterialPageRoute(
      //     builder: (context) => const HomeScreen(),
      //   );
      // case '/login':
      //   return MaterialPageRoute(
      //     builder: (context) => const LoginScreen(),
      //   );
      // case "/ForgotPassword":
      //   return MaterialPageRoute(
      //       builder: (context) => const ForgotPasswordPage());
      // case "/SignUp":
      //   return MaterialPageRoute(builder: (context) => const SignUp());
      // case "/VerificationPage":
      //   return MaterialPageRoute(
      //       builder: (context) => const VerificationPage());
      // case "/CreatePassword":
      //   return MaterialPageRoute(builder: (context) => const CreatePassword());
      // case "/CreateTaskMenu":
      //   return MaterialPageRoute(builder: (context) => const CreateScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );
    }
  }
}
