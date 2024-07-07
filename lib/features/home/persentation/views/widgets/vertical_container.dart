import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class VericalContainer extends StatelessWidget {
  const VericalContainer(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.number});
  final String title, subtitle;
  final int number;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(15),
      width: screenWidth * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.secondryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text(
              title,
              style: AppStyles.notoSansStyleRegular16(context),
              overflow: TextOverflow.fade,
              softWrap: false,
            ),
          ),
          Text(number.toString(), style: AppStyles.notoSansStyleBold46(context)),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppStyles.notoSansStyleMedium16(context).copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
