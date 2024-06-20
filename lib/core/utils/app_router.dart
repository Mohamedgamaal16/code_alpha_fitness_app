import 'package:fitness_app/features/auth/presention/view/reset_password_view.dart';
import 'package:fitness_app/features/auth/presention/view/sign_in_view.dart';
import 'package:fitness_app/features/auth/presention/view/sign_up_view.dart';
import 'package:fitness_app/features/onboarding/peresntion/views/onboarding_view.dart';
import 'package:fitness_app/features/splash/peresetntaion/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/home';
  static const kSignUp = '/signup';
  static const kOnBoardingScreen = "/IntroductionScreen";
  static const kSignInView = '/signin';
  static const kResetPasswordView = '/ResetPasswordView';
  static const kAboutPage = '/AboutPage';
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: kSplashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kOnBoardingScreen,
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: kSignInView,
      builder: (context, state) => const SignInView(),
    ),
    GoRoute(
      path: kSignUp,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: kResetPasswordView,
      builder: (context, state) => const ResetPasswordView(),
    ),
  ]);
}
