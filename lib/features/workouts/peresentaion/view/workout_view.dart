import 'package:fitness_app/features/workouts/peresentaion/view/widgets/workout_view_body.dart';
import 'package:flutter/material.dart';

class WorkoutView extends StatelessWidget {
  const WorkoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Padding(
        padding:  EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
        child: WorkoutViewBody(),
      )),
    );
  }
}
