import 'package:flutter/material.dart';

abstract class AppColors {
 static const textColor = Color(0xFF1F2022);
    static const primaryColor = Color(0xFF6358E1);
    static const textBlack = Color(0xff6358E1);
    static const white = Color(0xffFFFFFF);
    static const grey =Color(0xFFB6BDC6);
    static const loadingBlack = Color(0x80000000);

    static const textFieldBackground= Color(0xffFBFCFF);
    static const textFieldBorder = Color (0xffB9BBC5);
    static const disabledColor = Color(0xFFE1E1E5);
    static const errorColor = Color (0xffF25252);
    static const homeBackgroundColor = Color.fromRGBO(252, 252, 252, 1);
    static const textGrey = Color(0xFF8F98A3);
    static const cardioColor = Color( 0xffFCB74F);
    static const armsColor = Color(0xff5C9BA4);
}


// class DataConstants {
//     // Onboarding
//     static final onboardingTiles = [
//         OnboardingTile(
//             title: TextConstants.onboarding1Title,
//             maintext: TextConstants.onboarding1Description,
//             imagePath: PathConstants.onboarding1
//         ),
//         OnboardingTile(
//             title: TextConstants.onboarding Title,
//             mainText: TextConstants.onboarding Description,
//             imagePath: PathConstants.onboarding2
//         ),
//         OnboardingTile(
//             title: TextConstants.onboarding3Title,
//             maintext: TextConstants.onboarding3Description,
//             imagePath: PathConstants.onboarding3
//         )
//     ];
// }
class PathConstants{
    // Onboarding
    static const String onboarding1 = 'assets/images/onboarding/onboarding.png';
    static const String onboarding2 = 'assets/images/onboarding/onboarding_2.png';
    static const String onboarding3 = 'assets/images/onboarding/onboarding_3.png';
    // Auth
    static const String eye = 'assets/images/auth/eye_icon.png';
    // Tabbar
    static const String home = 'assets/icons/home/home_icon.png';
    static const String workouts = 'assets/icons/home/workouts_icon.png';
    static const String settings='assets/icons/home/settings_icon.png';
    // Home
    static const String profile = 'assets/images/home/profile.png';
    static const String finished = 'assets/images/home/finished.png';
    static const String inProgress = 'assets/icons/home/inProgress.png';
    static const String timeSent = 'assets/icons/home/time.png';
    static const String cardio = 'assets/images/home/cardio.png';
    static const String arms = 'assets/images/home/arms.png';
    static const String progress = 'assets/icons/home/progress.png';
}
class TextConstants {
    // Onboarding
    static const String onboarding1Title = "Workout anywhere";
    static const String onboarding2Title = "Learn techniques";
    static const String onboarding3Title = "Stay strong & healthy";
    static const String onboarding1Description =
    "You can do your workout at home without any equipment, outside or at the gym.";
    static const String onboarding2Description =
    "Our workout programs are made by professionals.";
    static const String onboarding3Description =
    "We want you to fully enjoy the program and stay healthy and positive.";
}