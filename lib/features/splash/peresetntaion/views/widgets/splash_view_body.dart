import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fitness_app/core/utils/app_router.dart';
import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000), () {
      navigateToNextPage(context);
    });
  }
void navigateToNextPage(BuildContext context) async {

  final SharedPreferences prefs = GetIt.instance<SharedPreferences>();
        // await prefs.setBool('onBoardingDone', false);
        // await prefs.setBool('isLoggedIn', false);

  // Check if user is logged in
  bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  
  // Check if onboarding is done
  bool onBoardingDone = prefs.getBool('onBoardingDone') ?? false;

  // Decide navigation based on login status and onboarding completion
  if (isLoggedIn) {
    GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
  } else {
    if (onBoardingDone) {
      GoRouter.of(context).pushReplacement(AppRouter.kSignInView);
    } else {
      GoRouter.of(context).pushReplacement(AppRouter.kOnBoardingView);
    }
  }
}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'FITNESS',
            style: AppStyles.notoSansStyleBold60(context),
          ),
          const SizedBox(height: 12.0),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Stay strong & healthy',
                textStyle: AppStyles.notoSansStyleMedium16(context)
                   ,
              )
            ],
          ),
        ],
      ),
    );
  }
}
