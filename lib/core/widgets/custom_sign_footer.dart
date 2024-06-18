import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomSignFooter extends StatelessWidget {
  const CustomSignFooter({
    super.key,
     required this.pageName, required this.onTap, required this.sentence,
  });
final String pageName,sentence;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sentence,
          style: AppStyles.notoSansStyleRegular12(context),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            pageName,
            style: AppStyles.notoSansStyleRegular12(context),
          ),
        )
      ],
    );
  }
}
