import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, User',
              style: AppStyles.notoSansStyleBold16(context),
            ),
            Text(
              TextConstants.trackyourgoals,
              style: AppStyles.notoSansStyleregular14(context)
                  .copyWith(color: Colors.black),
            ),
          ],
        ),
        Spacer(),
        const CircleAvatar(
          backgroundColor: Colors.amber,
          radius: 25,
          child: Image(image: AssetImage(ImagesPathes.avatar)),
        ),
      ],
    );
  }
}
