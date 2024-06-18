import 'package:fitness_app/features/onboarding/peresntion/view_model/update_page/update_page_cubit.dart';
import 'package:fitness_app/features/onboarding/peresntion/views/widgets/on_boarding_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(body: BlocProvider(
        create: (context) => UpdatePageCubit(),
        child: const OnBoardingScreenBody(),
      )),
    );
  }
}