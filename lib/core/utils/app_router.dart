import 'package:fitness_app/features/auth/presention/view/reset_password_view.dart';
import 'package:fitness_app/features/auth/presention/view/sign_in_view.dart';
import 'package:fitness_app/features/auth/presention/view/sign_up_view.dart';
import 'package:fitness_app/features/home/persentation/view_model/home_cubit/home_cubit.dart';
import 'package:fitness_app/features/home/persentation/views/home_view.dart';
import 'package:fitness_app/features/onboarding/peresntion/views/onboarding_view.dart';
import 'package:fitness_app/features/splash/peresetntaion/views/splash_view.dart';
import 'package:fitness_app/features/workouts/peresentaion/view/widgets/add_data_view.dart';
import 'package:fitness_app/features/workouts/peresentaion/view/widgets/add_excersise_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/home';
  static const kSignUpView = '/signup';
  static const kOnBoardingView = "/IntroductionScreen";
  static const kSignInView = '/signin';
  static const kResetPasswordView = '/ResetPasswordView';
  static const kAboutView = '/AboutPage';
  static const kAddDataView = '/AddDataView';
  static const kAddExercisessView = '/AddExercisessView';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: kSplashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kOnBoardingView,
      builder: (context, state) => const OnBoardingScreen(),
    ),GoRoute(
      path: kAddExercisessView,
      builder: (context, state) => const AddExercisessView(),
    ),
    GoRoute(
      path: kSignInView,
      builder: (context, state) => const SignInView(),
    ), GoRoute(
      path: kAddDataView,
      builder: (context, state) => const AddDataView(),
    ),
    GoRoute(
      path: kSignUpView,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: kResetPasswordView,
      builder: (context, state) => const ResetPasswordView(),
    ),  GoRoute(
      path: kHomeView,
      builder: (context, state) => BlocProvider(
        create: (context) => HomeCubit(),
        child: const HomeView(),
      ),
    ),
  ]);
}
