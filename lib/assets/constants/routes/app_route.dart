// import 'package:flutter/material.dart';
//
// import '../../../features/home/profile/presentation/pages/edit_profile.dart';
// import '../../../features/home/profile/presentation/pages/main_profile.dart';
// import '../../../features/home/profile/presentation/pages/profile.dart';
// import '../../../features/onboarding/onboarding.dart';
//
// class RouteGenerator {
//   static Route<dynamic> onGenerateRoute(RouteSettings settings) {
//     var args = settings.arguments;
//
//     switch (settings.name) {
//       case '/':
//         return MaterialPageRoute(
//           builder: (context) => const MainProfile(),
//         );
//
//       case "/onBoarding":
//         return MaterialPageRoute(builder: (context) => const OnBoarding());
//       case "/profile":
//         return MaterialPageRoute(builder: (context) => const Profile());
//       case "/editProfile":
//         return MaterialPageRoute(builder: (context) => const EditProfileScreen());
//       // case '/home':
//       //   return MaterialPageRoute(
//       //     builder: (context) => const HomeScreen(),
//       //   );
//       // case '/login':
//       //   return MaterialPageRoute(
//       //     builder: (context) => const LoginScreen(),
//       //   );
//       // case "/ForgotPassword":
//       //   return MaterialPageRoute(
//       //       builder: (context) => const ForgotPasswordPage());
//       // case "/SignUp":
//       //   return MaterialPageRoute(builder: (context) => const SignUp());
//       // case "/VerificationPage":
//       //   return MaterialPageRoute(
//       //       builder: (context) => const VerificationPage());
//       // case "/CreatePassword":
//       //   return MaterialPageRoute(builder: (context) => const CreatePassword());
//       // case "/CreateTaskMenu":
//       //   return MaterialPageRoute(builder: (context) => const CreateScreen());
//       default:
//         return MaterialPageRoute(
//           builder: (context) => const Profile(),
//         );
//     }
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_baza/features/onboarding/onboarding.dart';

import '../../../core/pages/splash_screen.dart';
import '../../../features/home/home_page.dart';
import '../route_names/app_route.dart';


class AppRoute {
  static Route? onGenerateRoute(RouteSettings settings) {
    final String routeName = settings.name ?? '';


    switch (routeName) {
      case AppRouteNames.splash:
        return CupertinoPageRoute(builder: (context) => SplashScreen());
      case AppRouteNames.home:
        return CupertinoPageRoute(builder: (context) => HomePage());
      case AppRouteNames.onBoarding:
        return CupertinoPageRoute(builder: (context) => OnBoarding());
      default:
        return CupertinoPageRoute(builder: (context) => Scaffold());
    }
  }
}

