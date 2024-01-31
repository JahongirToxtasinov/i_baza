import 'package:flutter/material.dart';
import 'package:i_baza/features/profile/presentation/pages/edit_profile.dart';

import '../../core/pages/error.dart';
import '../../core/pages/file_screen.dart';
import '../../core/pages/splash_screen.dart';
import '../../features/onboarding/onboarding.dart';
import '../../features/profile/presentation/pages/profile.dart';

class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const Profile(),
        );

      case "/onBoarding":
        return MaterialPageRoute(builder: (context) => const OnBoarding());
      case "/editProfile":
        return MaterialPageRoute(builder: (context) => const EditProfileScreen());
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
          builder: (context) => const Profile(),
        );
    }
  }
}
