import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/features/workouts/peresentaion/view/widgets/linear_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class WorkoutPlansCard extends StatelessWidget {
  const WorkoutPlansCard({
    super.key,
    required this.title,
    required this.exercies,
    this.onPressed,
    required this.minutes,
  });
  final String title;
  final int exercies, minutes;
  final void Function()? onPressed;
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: AppStyles.notoSansStyleBold34(context),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  '$exercies exercises',
                  style: AppStyles.notoSansStyleRegular16(context),
                ),
                Text(
                  '$minutes minutes',
                  style: AppStyles.notoSansStyleRegular16(context),
                ),
                const SizedBox(
                  height: 10,
                ),
                const LinearIndicator(currentProgress: 5, progress: 10,),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const Spacer(),
            Flexible(
              child: IconButton(
                icon: const Icon(
                  FontAwesomeIcons.angleRight,
                  color: Colors.black,
                  size: 30.0,
                ),
                onPressed: onPressed,
              ),
            ),
            const SizedBox(width: 5,)
          ],
        ),
      ),
    );
  }
}
