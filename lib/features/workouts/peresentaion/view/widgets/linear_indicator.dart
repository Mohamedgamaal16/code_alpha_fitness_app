import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearIndicator extends StatelessWidget {
  const LinearIndicator({
    super.key,
    required this.currentProgress,
    required this.progress,
  });
  final int currentProgress, progress;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LinearPercentIndicator(
          width: MediaQuery.of(context).size.width * 0.6,
          animation: true,
          lineHeight: 10.0,
          animationDuration: 2500,
          percent: 0.5,
          backgroundColor: Colors.grey.shade400,
          barRadius: const Radius.circular(10),
          progressColor: AppColors.primaryColor,
        ),
        Text("$currentProgress / $progress",
            style: AppStyles.notoSansStyleRegular12(context)),
      ],
    );
  }
}
