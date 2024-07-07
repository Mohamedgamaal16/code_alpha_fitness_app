import 'package:fitness_app/core/utils/app_router.dart';
import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/features/workouts/peresentaion/view/widgets/add_workouts_container.dart';
import 'package:fitness_app/features/workouts/peresentaion/view/widgets/workout_plans_card.dart';
import 'package:fitness_app/features/workouts/peresentaion/view/widgets/workouts_plans_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WorkoutViewBody extends StatelessWidget {
  const WorkoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Text(
            TextConstants.workoutsPlans,
            style: AppStyles.notoSansStyleBold20(context),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        const WorkoutsPlansCardList(),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 5,
          ),
        ),
        SliverToBoxAdapter(
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kAddDataView);
            },
            child: const AddWorkoutsContainer(
              title: 'Add Workouts',
              exercies: 'Exercies',
              minutes: 'Expected time',
            ),
          ),
        ),
      ],
    );
  }
}
