import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlansCard extends StatelessWidget {
  const PlansCard({
    super.key,
    required this.title,
    required this.exercies,
    this.onPressed, required this.minutes,
  });
  final String title;
  final int exercies,minutes;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * .65,
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
              ],
            ),
            const Spacer(),
            Flexible(
              child: IconButton(
                icon: const Icon(
                  FontAwesomeIcons.angleRight,
                  color: AppColors.primaryColor,
                  size: 40.0,
                ),
                onPressed: onPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
