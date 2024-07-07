import 'package:fitness_app/core/utils/app_router.dart';
import 'package:fitness_app/features/workouts/peresentaion/view/widgets/workout_plans_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WorkoutsPlansCardList extends StatelessWidget {
  const WorkoutsPlansCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: WorkoutPlansCard(
              title: 'chest',
              exercies: 5,
              minutes: 5,
            ),
          );
        },
        childCount: 3,
      ),
    );
  }
}
