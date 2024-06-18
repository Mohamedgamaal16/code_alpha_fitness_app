import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
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
    //
    return GNav(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      activeColor: Colors.white,
      textStyle: AppStyles.notoSansStyleRegular12(context),
      gap: 10,
      tabBackgroundColor: AppColors.primaryColor,
      backgroundColor:AppColors.grey ,
      onTabChange: changePages,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      tabs: const [
        GButton(
          icon: FontAwesomeIcons.house,
          text: 'Home',
          iconColor: Colors.white,
        ),
         GButton(
          icon: FontAwesomeIcons.feather,
          text: 'Authors',
          iconColor: Colors.white,
        ),
        GButton(
          icon: FontAwesomeIcons.user,
          text: 'Profile',
          iconColor: Colors.white,
        ),
      ],
      selectedIndex: currentIndex,
    );
  }
}
