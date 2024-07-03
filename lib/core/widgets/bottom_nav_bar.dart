import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.changePages,
    required this.currentIndex,
  });

  final int currentIndex;
  final Function(int) changePages;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: GNav(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          activeColor: AppColors.primaryColor,
          textStyle: AppStyles.notoSansStyleRegular12(context)
              .copyWith(color: AppColors.primaryColor),
          gap: 8,
          tabBackgroundColor: Colors.transparent,
          backgroundColor: Colors.white,
          onTabChange: changePages,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          tabs: const [
            GButton(
              iconSize: 26,
              icon: MyFlutterApp.home,
              text: 'Home',
              iconColor: Colors.black,
            ),
            GButton(
              iconSize: 26,
              icon: MyFlutterApp.dumbbell,
              text: 'Workouts',
              iconColor: Colors.black,
            ),
            GButton(
              iconSize: 26,
              icon: MyFlutterApp.fire,
              text: 'Calories calculator',
              iconColor: Colors.black,
            ),
            GButton(
              iconSize: 26,
              icon: MyFlutterApp.cog_outline,
              text: 'Profile',
              iconColor: Colors.black,
            ),
          ],
          selectedIndex: currentIndex,
        ),
      ),
    );
  }
}
