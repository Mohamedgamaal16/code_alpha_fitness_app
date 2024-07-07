import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/features/workouts/peresentaion/view/widgets/plus_circle_avatar.dart';
import 'package:flutter/material.dart';

class AddWorkoutsContainer extends StatelessWidget {
  const AddWorkoutsContainer({
    super.key,
    required this.title,
    required this.exercies,
    required this.minutes,
  });
  final String title, exercies, minutes;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.secondryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            const PlusCircleAvatar (),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: AppStyles.notoSansStyleBold20(context),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  exercies,
                  style: AppStyles.notoSansStyleRegular12(context),
                ),
                Text(
                  minutes,
                  style: AppStyles.notoSansStyleRegular12(context),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
