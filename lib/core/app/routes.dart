// import 'package:flutter/material.dart';
//
// class Routes {
//   static const initialRoute = splashRoute;
//   static const splashRoute = '/';
//   static const onboardingRoute = '/onboarding';
//   // static const welcomeViewRoute = '/welcome-view';
//   // static const emailSignInRoute = '/email-sign-in';
//   // static const verifyEmailRoute = '/verify-email';
//   // static const emailVerifiedRoute = '/email-verified';
//   // static const locationAuthRoute = '/location-auth';
//   // static const successViewRoute = '/success-view';
//   // static const setUpProfile = '/setUp-Profile';
//   // static const dashboardViewRoute = '/dashboard-view';
//
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case splashRoute:
//         return MaterialPageRoute(builder: (_) => const SplashView());
//       // case onboardingRoute:
//       //   return MaterialPageRoute(builder: (_) => const OnboardingView());
//       // case welcomeViewRoute:
//       //   return MaterialPageRoute(builder: (_) => const WelcomeView());
//       // case emailSignInRoute:
//       //   return MaterialPageRoute(builder: (_) => const EmailSigninView());
//       // case verifyEmailRoute:
//       //   return MaterialPageRoute(builder: (_) => const VerifyEmailView());
//       // case emailVerifiedRoute:
//       //   return MaterialPageRoute(builder: (_) => const EmailVerifiedScreen());
//       // // case locationAuthRoute:
//       // //   return MaterialPageRoute(builder: (_) => const LocationAuthView());
//       // case successViewRoute:
//       //   return MaterialPageRoute(builder: (_) => const SuccessView());
//       // case dashboardViewRoute:
//       //   return MaterialPageRoute(builder: (_) => const DashboardView());
//       default:
//         return MaterialPageRoute(
//           builder: (_) => Scaffold(
//             body: Center(
//               child: Text('No route defined for ${settings.name}'),
//             ),
//           ),
//         );
//     }
//   }
// }
