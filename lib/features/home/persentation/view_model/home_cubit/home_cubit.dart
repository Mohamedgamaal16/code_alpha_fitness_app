import 'package:fitness_app/features/calories_calc/peresntaion/view/calc_ciew.dart';
import 'package:fitness_app/features/home/persentation/views/widgets/home_view_body.dart';
import 'package:fitness_app/features/profile/persention/view/profile_view.dart';
import 'package:fitness_app/features/workouts/peresentaion/view/workout_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  int currentIndex = 0;
  final List<Widget> appPages = [
    const HomeViewBody(),
    const WorkoutView(),
    const CalacView(),
    const ProfileView(),
  ];
  void changePages(int value) {
    currentIndex = value;
    emit(PageChanged());
  }
}
