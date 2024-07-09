import 'package:fitness_app/core/utils/app_router.dart';
import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/core/widgets/custom_button.dart';
import 'package:fitness_app/core/widgets/custom_input_field.dart';
import 'package:go_router/go_router.dart';

class AddDataView extends StatelessWidget {
  const AddDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Add Your Workout',
                    style: AppStyles.notoSansStyleBold26(context),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Workout Name',
                  style: AppStyles.notoSansStyleBold16(context),
                ),
                const SizedBox(height: 10),
                const CustomInputField(
                  showLabel: false,
                  labelText: 'Workout Name',
                  hintText: 'Enter workout name',
                ),
                const SizedBox(height: 16),
                Text(
                  'Exercises Number',
                  style: AppStyles.notoSansStyleBold16(context),
                ),
                const SizedBox(height: 10),
                const CustomInputField(
                  showLabel: false,
                  labelText: 'Exercises Number',
                  hintText: 'Enter number of exercises from 1 : 10',
                ),
                const SizedBox(height: 16),
                Text(
                  'Minutes',
                  style: AppStyles.notoSansStyleBold16(context),
                ),
                const SizedBox(height: 10),
                const CustomInputField(
                  showLabel: false,
                  labelText: 'Minutes',
                  hintText: 'Enter workout duration in minutes',
                ),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: CustomButton(
                      labelName: 'Add',
                      onPressed: () {
                        GoRouter.of(context).pushReplacement(AppRouter.kAddExercisessView);();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
