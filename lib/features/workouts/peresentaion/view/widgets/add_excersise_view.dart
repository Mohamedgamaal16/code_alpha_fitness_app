import 'package:fitness_app/core/utils/app_router.dart';
import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/core/widgets/custom_button.dart';
import 'package:fitness_app/features/workouts/data/show_diolog.dart';
import 'package:fitness_app/features/workouts/peresentaion/view/widgets/add_workouts_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddExercisessView extends StatelessWidget {
  const AddExercisessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Center(
                  child: Text(
                    'Add Your Exercises',
                    style: AppStyles.notoSansStyleBold26(context),
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 70)),
              SliverToBoxAdapter(
                child: GestureDetector(
                  onTap: () {
                    addExercises(context);
                  },
                  child: const AddWorkoutsContainer(
                    title: 'Add exercies',
                    exercies: 'Sets',
                    minutes: '',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 
}
