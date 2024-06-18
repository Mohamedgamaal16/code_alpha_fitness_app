
import 'package:fitness_app/features/onboarding/peresntion/views/onboarding_view.dart';
import 'package:fitness_app/features/splash/peresetntaion/views/splash_view.dart';
import 'package:go_router/go_router.dart';


abstract class AppRouter {
  static const kSplashView = '/';
static const kHomeView = '/home';
static const kSignUp = '/signup';
static const  kOnBoardingScreen="/IntroductionScreen";
static const kLogInView = '/signin';
 static const kChangePassword = '/changePassword';
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
   
  ]);
}
