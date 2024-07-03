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
        Container(
          height: MediaQuery.of(context).size.height * 0.65,
          width: MediaQuery.of(context).size.width *1,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill))),
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
          style: AppStyles.notoSansStyleregular14(context)
              .copyWith(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
