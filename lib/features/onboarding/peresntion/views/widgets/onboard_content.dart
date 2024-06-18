import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class OnBoardContent extends StatelessWidget {
  const OnBoardContent(
      {super.key,
      required this.image,
      required this.title,
      required this.description});
  final String image, title, description;
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        const Spacer(),
        Image.asset(image),
        const Spacer(),
        Text(
          title,
          style: AppStyles.notoSansStyleBold25(context),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          
          description,
          style: AppStyles.notoSansStyleregular14(context),textAlign: TextAlign.center,
        ),
        const Spacer()
      ],
    );
  }
}
