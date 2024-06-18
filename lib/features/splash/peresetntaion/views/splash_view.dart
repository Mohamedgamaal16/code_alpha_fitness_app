import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/features/splash/peresetntaion/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.homeBackgroundColor,
      body: SplashViewBody(),
    );
  }
}
