import 'package:fitness_app/core/widgets/bottom_nav_bar.dart';
import 'package:fitness_app/features/home/persentation/view_model/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit homeCubit = BlocProvider.of<HomeCubit>(context);
        return Scaffold(
          body: SafeArea(
            child: homeCubit.appPages[homeCubit.currentIndex],
          ),
          bottomNavigationBar: CustomBottomNavBar(
            changePages: homeCubit.changePages,
            currentIndex: homeCubit.currentIndex,
          ),
        );
      },
    );
  }
}
