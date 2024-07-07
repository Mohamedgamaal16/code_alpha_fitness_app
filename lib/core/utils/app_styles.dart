import 'package:fitness_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle notoSansStyleRegular12(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle notoSansStyleBold12(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w700,
    );
  }  static TextStyle notoSansStyleBold16(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle notoSansStyleBold60(BuildContext context) {
    return TextStyle(
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 60),
      fontWeight: FontWeight.w700,
    );
  }
static TextStyle notoSansStyleBold26(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontWeight: FontWeight.w700,
    );
  }static TextStyle notoSansStyleBold46(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 46),
      fontWeight: FontWeight.w700,
    );
  }static TextStyle notoSansStyleBold34(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle notoSansStyleMedium16(BuildContext context) {
    return TextStyle(
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle notoSansStyleBold25(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 25),
      fontWeight: FontWeight.w600,
    );
  }static TextStyle notoSansStyleBold20(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
    );
  }
static TextStyle notoSansStyleRegular16(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle notoSansStyleregular14(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle notoSansStyleBold14(BuildContext context) {
    return TextStyle(
      color: AppColors.secondryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w700,
    );
  }

}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .7;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  if (width < 600) {
    return width / 350;
  } else if (width < 1200) {
    return width / 750;
  } else {
    return width / 1920;
  }
}
