import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/features/profile/persention/view/widgets/avatar.dart';
import 'package:fitness_app/features/profile/persention/view/widgets/menu_item.dart';
import 'package:fitness_app/features/profile/persention/view/widgets/menu_item_list.dart';
import 'package:fitness_app/features/profile/persention/view/widgets/social_icon.dart';
import 'package:fitness_app/features/profile/persention/view/widgets/social_icons_list.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        const Avatar(),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Jane Doe",
          style: AppStyles.notoSansStyleBold25(context),
        ),
        const SizedBox(
          height: 20,
        ),
        const Expanded(child: MenuItemList()),
        Text(
          "Join us in social media",
          style: AppStyles.notoSansStyleBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        const SocilaIconList()
      ],
    );
  }
}
