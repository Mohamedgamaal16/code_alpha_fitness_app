import 'dart:io';

import 'package:flutter/material.dart';

abstract class AppColors {
  static const textColor = Color(0xFF1F2022);
  static const primaryColor = Color(0xFFDF423B);
  static Color opacityPrimaryColor = const Color(0xFFDF423B).withOpacity(0.5);

  static const homeBackgroundColor = Colors.white;
  static const secondryColor = Color(0xFFF0F0F0);
}

class ImagesPathes {
  // Onboarding
  static const String muscleHand = "assets/images/muscleHand.png";
  static const String inprogress = "assets/images/inprogress.png";
  static const String stopwatch = 'assets/images/stopwatch.png';
  static const String avatar = "assets/images/avatar.png";
}

class TextConstants {
  // Onboarding
  static const String onboarding1Title = "Workout anywhere";
  static const String onboarding2Title = "Learn techniques";
  static const String onboarding3Title = "Stay strong & healthy";
  static const String onboarding1Description =
      "You can do your workout at home without any equipment, outside or at the gym.";
  static const String onboarding2Description =
      "Our workout programs are made by professionals and you can add yours.";
  static const String onboarding3Description =
      "We want you to fully enjoy the program and stay healthy and positive.";

  static const String inprogress = 'In progress';
  static const String workouts = "Workouts";
  static const String muscleHand = "assets/images/muscleHand.png";
  static const String timeSpent = "Time Spent";
  static const String minutes = "Minutes";
  static const String finished = "Finished";
  static const String completedWorkouts = "Completed Workouts";
  static const String discovernewworkouts = "Discover new workouts";
  static const String trackyourgoals = "Track your goals!";
  static const String yourWorkouts = "Your workouts";
  static const String workoutsPlans = "Workouts plans";
  static const String selectHeight = "Select Height :";
  static const String calculate = "Calculate";
  static const String age = "Age";
  static const String pickweight = "Pick weight";
  static const String calorieCalculator = "Calorie Calculator";
  // static const String calculate = "Calculate";
  // static const String calculate = "Calculate";
}
