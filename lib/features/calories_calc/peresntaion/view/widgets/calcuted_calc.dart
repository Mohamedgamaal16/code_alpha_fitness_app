
import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CalacutedCaloreis extends StatelessWidget {
  const CalacutedCaloreis({
    super.key,
    required this.title,
    required this.calc,
  });
  final String title;
  final int calc;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          
          title,
          style: AppStyles.notoSansStyleBold12(context)
              .copyWith(color: Colors.grey),textAlign: TextAlign.center,
        ),
        Text(
          calc.toString(),
          style: AppStyles.notoSansStyleBold14(context)
              .copyWith(color: Colors.black),
        )
      ],
    );
  }
}
