import 'package:fitness_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.secondryColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ]),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: AppColors.primaryColor,
          size: 28,
        ),
      ),
    );
  }
}
