import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class HoriZontalContainer extends StatelessWidget {
  const HoriZontalContainer(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.number});
  final String image, title, subtitle;
  final int number;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: screenWidth * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.secondryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  height: 60,
                  width: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.fill))),
              const SizedBox(width: 10),
              Flexible(child: Text(title, style: AppStyles.notoSansStyleRegular18(context))),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              Text(number.toString(),
                  style: AppStyles.notoSansStyleBold25(context)),
              const SizedBox(width: 10),
              Text(subtitle,
                  style: AppStyles.notoSansStyleMedium16(context)
                      .copyWith(color: Colors.grey)),
            ],
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
